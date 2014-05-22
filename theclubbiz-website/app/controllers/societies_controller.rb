class SocietiesController < ApplicationController
  before_action :set_society, only: [:show, :edit, :update, :destroy, :addFeedback]
  before_filter :authenticate_user!, :except => [:show, :index]
  # GET /societies
  # GET /societies.json
  def index
    @societies = Society.all
  end

  # GET /societies/1
  # GET /societies/1.json
  def show
    @events = SocietyEvent.where(id: :id)
      
    # announcements from Society Admins
    @announcements = Announcement.where(society_id: @society.id)
  end

  # GET /societies/new
  def new
    @society = Society.new
  end

  # GET /societies/1/edit
  def edit
  end

  # POST /societies
  # POST /societies.json
  def create

    @society = Society.new(society_params)
    
    # Validate admins
    admin = params[:admin]
    valid_admins = []
    valid_admins << current_user
    if !admin.nil?
      admin_array = admin.split(",")
      for i in 0 ... admin_array.size
        admin_chosen = User.find_by(email: admin_array[i])
        if admin_chosen.nil?
          @society.errors[:base] << "The email #{admin_array[i]} is not in the database"
        else
          valid_admins << admin_chosen
        end
      end
    end
    valid_admins.uniq!

    respond_to do |format|
      if !(@society.errors).empty?
        format.html { render action: 'new' }
        format.json { render json: @society.errors, status: :unprocessable_entity }
      else
        if (@society.save)
          valid_admins.each do |va|
            SocietyAdmin.create(society_id: @society.id, user_id: va.id)
            SocietyFollower.create(society_id: @society.id, user_id: va.id)
          end
          format.html { redirect_to @society, notice: 'Society was successfully created.' }
          format.json { render action: 'show', status: :created, location: @society }
        else
          format.html { render action: 'new' }
          format.json { render json: @society.errors, status: :unprocessable_entity }
        end
        # Create announcement
        Announcement.create(allSoc: true, subject: "New Society", text: "Warmest welcome to our newest society member: #{@society.name}!")

        format.html { redirect_to @society, notice: 'Society was successfully created.' }
        format.json { render action: 'show', status: :created, location: @society }
      end
    end
  end

  # PATCH/PUT /societies/1
  # PATCH/PUT /societies/1.json
  def update
    respond_to do |format|
      if @society.update(society_params)
        format.html { redirect_to @society, notice: 'Society was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @society.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /societies/1
  # DELETE /societies/1.json
  def destroy
    @society.destroy
    respond_to do |format|
      format.html { redirect_to societies_url }
      format.json { head :no_content }
    end
  end

  def addFeedback
    SocietyFeedback.create(text: params[:fb], society_id: params[:id],  user_id: current_user.id)
    redirect_to :back
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_society
      @society = Society.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def society_params
      params.require(:society).permit(:name, :logo, :description, :short_description, :website, 
        :university, :office_address_line1, :office_address_line2,
        :office_state, :office_city, :office_postcode, :email, :phone_number)
    end
end
