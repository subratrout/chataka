class WaterQualitiesController < ApplicationController
  before_action :set_water_quality, only: [:show, :edit, :update, :destroy]

  # GET /water_qualities
  # GET /water_qualities.json
  def index
    @water_qualities = WaterQuality.all
  end

  # GET /water_qualities/1
  # GET /water_qualities/1.json
  def show
  end

  # GET /water_qualities/new
  def new
    @water_quality = WaterQuality.new
  end

  # GET /water_qualities/1/edit
  def edit
  end

  # POST /water_qualities
  # POST /water_qualities.json
  def create
    @water_quality = WaterQuality.new(water_quality_params)

    respond_to do |format|
      if @water_quality.save
        format.html { redirect_to @water_quality, notice: 'Water quality was successfully created.' }
        format.json { render action: 'show', status: :created, location: @water_quality }
      else
        format.html { render action: 'new' }
        format.json { render json: @water_quality.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /water_qualities/1
  # PATCH/PUT /water_qualities/1.json
  def update
    respond_to do |format|
      if @water_quality.update(water_quality_params)
        format.html { redirect_to @water_quality, notice: 'Water quality was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @water_quality.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /water_qualities/1
  # DELETE /water_qualities/1.json
  def destroy
    @water_quality.destroy
    respond_to do |format|
      format.html { redirect_to water_qualities_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_water_quality
      @water_quality = WaterQuality.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def water_quality_params
      params.require(:water_quality).permit(:city, :state, :address, :address1, :address2, :place, :latitude, :longitude, :test_year, :source, :source_type, :source_owner, :color_hazen_unit, :odor, :taste, :turbidity, :ph_value, :total_hardness, :iron, :chloride, :residual_free_chlorine, :fluoride, :total_dissolved_solids, :calcium, :magnesium, :copper, :manganese, :sulphate, :nitrate, :phenolic_compounds, :mercury, :cadmium, :selenium, :arsenic, :cyanide, :lead, :zinc, :sodium, :potassium, :hexavalent_chromium, :alkalinity, :pesticides, :detergent, :mineral_oil, :electrical_conductivity, :dissolved_oxygen, :biological_oxygen_demand, :chemical_oxygen_demand, :coliform)
    end
end
