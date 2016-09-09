class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]

  # GET /locations
  # GET /locations.json
  def index
    if params[:search]
      @locations = Location.near(params[:search], 100, :order => :distance)
    else
      @locations = Location.all 
# @json = User.all.to_gmaps4rails

    end
  end
  # GET /locations/1
  # GET /locations/1.json
  def show
  end

  # GET /locations/new
  def new
    @location = Location.new
  end

  # GET /locations/1/edit
  def edit
  end

  # POST /locations
  # POST /locations.json
  def create

    @location = current_user.locations.build(location_params)
    respond_to do |format|
      if @location.save
        format.html { redirect_to @location, notice: 'Location was successfully created.' }
        format.json { render :show, status: :created, location: @location }
      else
        format.html { render :new }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /locations/1
  # PATCH/PUT /locations/1.json
  def update
    respond_to do |format|
      if @location.update(location_params)
        format.html { redirect_to @location, notice: 'Location was successfully updated.' }
        format.json { render :show, status: :ok, location: @location }
      else
        format.html { render :edit }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locations/1
  # DELETE /locations/1.json
  def destroy
    @location.destroy
    flash[:sucess] = "Location deleted "
    redirect_to request.referrer || root_url
    # respond_to do |format|
    #   format.html { redirect_to locations_url, notice: 'Location was successfully destroyed.' }
    #   format.json { head :no_content }
    end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def location_params
      params.require(:location).permit(:address, :latitude, :longitude, :street_name, :county, :country, :door_number , :zipcode , :plot_number)
    end
    def correct_user
      @location.current_user.locations.find_by(id: params[:id])
      redirect_to root_url if @location.nil?
    end 
end
