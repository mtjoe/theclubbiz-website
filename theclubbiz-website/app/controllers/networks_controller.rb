class NetworksController < ApplicationController
  before_action :set_network, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :except => [:show, :index]

  # GET /networks
  # GET /networks.json
  def index
    @networks = Network.all
  end

  # GET /networks/1
  # GET /networks/1.json
  def show
  end

  # GET /networks/new
  def new
    @network = Network.new
  end

  # GET /networks/1/edit
  def edit
  end

  # POST /networks
  # POST /networks.json
  def create
    @network = Network.new(network_params)

    # Validate societies
    societies = params[:societies]
    valid_societies = []
    if !societies.nil?
      societies_array = societies.split(",")
      for i in 0 ... societies_array.size
        societies_chosen = Society.find_by(email: societies_array[i])
        if societies_chosen.nil?
          @network.errors[:base] << "The email #{societies_array[i]} is not in the database"
        else
          valid_societies << societies_chosen
        end
      end
    end
    valid_societies.uniq!


    respond_to do |format|
      if !(@network.errors).empty?
        format.html { render action: 'new' }
        format.json { render json: @network.errors, status: :unprocessable_entity }
      else
        if @network.save
          valid_societies.each do |vs|
            SocietyNetwork.create(network_id: @network.id, society_id: vs.id)
          end

          format.html { redirect_to @network, notice: 'Network was successfully created.' }
          format.json { render action: 'show', status: :created, location: @network }
        else
          format.html { render action: 'new' }
          format.json { render json: @network.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /networks/1
  # PATCH/PUT /networks/1.json
  def update
    respond_to do |format|
      if @network.update(network_params)
        format.html { redirect_to @network, notice: 'Network was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @network.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /networks/1
  # DELETE /networks/1.json
  def destroy
    @network.destroy
    respond_to do |format|
      format.html { redirect_to networks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_network
      @network = Network.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def network_params
      params.require(:network).permit(:name, :description, :user_id, :image)
    end
end
