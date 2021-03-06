class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :except => [:show, :index]
  before_action :isAdmin, only: [:edit]

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)
    network_id = params[:networks][:network_id]
    society_id = params[:societies][:society_id]
    if (network_id == "" && society_id == "") 
      @event.errors[:base] << "please enter host(s) for this event"
    elsif (network_id == "" && society_id != "") 
      isSociety = true
    elsif (network_id != "" && society_id == "") 
      isSociety = false
    else 
      @event.errors[:base] << "ERROR"
    end

    respond_to do |format|
      if !(@event.errors).empty?
        format.html { render action: 'new' }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      else
        if @event.save
          

          if isSociety
            SocietyEvent.create(society_id: society_id, event_id: @event.id)
          else
            network = SocietyNetwork.where(network_id: network_id)
            admin_soc_ids = []
            (SocietyAdmin.where(user_id: current_user.id)).each do |sa|
                admin_soc_ids << sa.society_id
            end

            network.each do |n|
              if (admin_soc_ids.include? n.society_id)
                SocietyEvent.create(society_id: n.society_id, event_id: @event.id)
              else
                Invitation.create(society_id: n.society_id, event_id: @event.id)
              end
            end
          end      

          format.html { redirect_to @event, notice: 'Event was successfully created.' }
          format.json { render action: 'show', status: :created, location: @event }
        else
          format.html { render action: 'new' }
          format.json { render json: @event.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url }
      format.json { head :no_content }
    end
  end

  def addFeedback
    EventFeedback.create(text: params[:fb], event_id: params[:id],  user_id: current_user.id)
    redirect_to :back
  end

  def acceptEvent
    SocietyEvent.create(society_id:params[:society_id], event_id: params[:event_id])
    Invitation.find(params[:inv_id]).destroy
    redirect_to :back
  end

  def declineEvent
    Invitation.find_by(id: params[:inv_id]).destroy
    redirect_to :back
  end

  def showTicket
    @eventFollower = EventFollower.find_by(id: params[:event_follower_id])
    render :layout => false
  end

  def getReport
    @event = Event.find_by(id: params[:event_id])
    render :layout => false
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    def isAdmin
      isAdmin = false
      if !current_user.nil? 
        (SocietyEvent.where(event_id: @event.id)).each do |se|
          if !((SocietyAdmin.find_by(society_id:se.society_id, user_id:current_user.id)).nil?)
            isAdmin = true
          end
        end
      end
      if !isAdmin
        redirect_to "/welcome/adminOnly"
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:name, :start_time, :end_time, :description, :short_description, :location_address_line1,
        :location_address_line2, :category_id, :location_state, :location_city, :location_postcode, 
        :website, :max_tickets, :image1, :image2, :image3, :ticket_price)
      #params[:name]
    end
end
