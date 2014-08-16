require 'test_helper'

class WaterQualitiesControllerTest < ActionController::TestCase
  setup do
    @water_quality = water_qualities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:water_qualities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create water_quality" do
    assert_difference('WaterQuality.count') do
      post :create, water_quality: { address1: @water_quality.address1, address2: @water_quality.address2, address: @water_quality.address, alkalinity: @water_quality.alkalinity, arsenic: @water_quality.arsenic, biological_oxygen_demand: @water_quality.biological_oxygen_demand, cadmium: @water_quality.cadmium, calcium: @water_quality.calcium, chemical_oxygen_demand: @water_quality.chemical_oxygen_demand, chloride: @water_quality.chloride, city: @water_quality.city, coliform: @water_quality.coliform, color_hazen_unit: @water_quality.color_hazen_unit, copper: @water_quality.copper, cyanide: @water_quality.cyanide, detergent: @water_quality.detergent, dissolved_oxygen: @water_quality.dissolved_oxygen, electrical_conductivity: @water_quality.electrical_conductivity, fluoride: @water_quality.fluoride, hexavalent_chromium: @water_quality.hexavalent_chromium, iron: @water_quality.iron, latitude: @water_quality.latitude, lead: @water_quality.lead, longitude: @water_quality.longitude, magnesium: @water_quality.magnesium, manganese: @water_quality.manganese, mercury: @water_quality.mercury, mineral_oil: @water_quality.mineral_oil, nitrate: @water_quality.nitrate, odor: @water_quality.odor, pesticides: @water_quality.pesticides, ph_value: @water_quality.ph_value, phenolic_compounds: @water_quality.phenolic_compounds, place: @water_quality.place, potassium: @water_quality.potassium, residual_free_chlorine: @water_quality.residual_free_chlorine, selenium: @water_quality.selenium, sodium: @water_quality.sodium, source: @water_quality.source, source_owner: @water_quality.source_owner, source_type: @water_quality.source_type, state: @water_quality.state, sulphate: @water_quality.sulphate, taste: @water_quality.taste, test_year: @water_quality.test_year, total_dissolved_solids: @water_quality.total_dissolved_solids, total_hardness: @water_quality.total_hardness, turbidity: @water_quality.turbidity, zinc: @water_quality.zinc }
    end

    assert_redirected_to water_quality_path(assigns(:water_quality))
  end

  test "should show water_quality" do
    get :show, id: @water_quality
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @water_quality
    assert_response :success
  end

  test "should update water_quality" do
    patch :update, id: @water_quality, water_quality: { address1: @water_quality.address1, address2: @water_quality.address2, address: @water_quality.address, alkalinity: @water_quality.alkalinity, arsenic: @water_quality.arsenic, biological_oxygen_demand: @water_quality.biological_oxygen_demand, cadmium: @water_quality.cadmium, calcium: @water_quality.calcium, chemical_oxygen_demand: @water_quality.chemical_oxygen_demand, chloride: @water_quality.chloride, city: @water_quality.city, coliform: @water_quality.coliform, color_hazen_unit: @water_quality.color_hazen_unit, copper: @water_quality.copper, cyanide: @water_quality.cyanide, detergent: @water_quality.detergent, dissolved_oxygen: @water_quality.dissolved_oxygen, electrical_conductivity: @water_quality.electrical_conductivity, fluoride: @water_quality.fluoride, hexavalent_chromium: @water_quality.hexavalent_chromium, iron: @water_quality.iron, latitude: @water_quality.latitude, lead: @water_quality.lead, longitude: @water_quality.longitude, magnesium: @water_quality.magnesium, manganese: @water_quality.manganese, mercury: @water_quality.mercury, mineral_oil: @water_quality.mineral_oil, nitrate: @water_quality.nitrate, odor: @water_quality.odor, pesticides: @water_quality.pesticides, ph_value: @water_quality.ph_value, phenolic_compounds: @water_quality.phenolic_compounds, place: @water_quality.place, potassium: @water_quality.potassium, residual_free_chlorine: @water_quality.residual_free_chlorine, selenium: @water_quality.selenium, sodium: @water_quality.sodium, source: @water_quality.source, source_owner: @water_quality.source_owner, source_type: @water_quality.source_type, state: @water_quality.state, sulphate: @water_quality.sulphate, taste: @water_quality.taste, test_year: @water_quality.test_year, total_dissolved_solids: @water_quality.total_dissolved_solids, total_hardness: @water_quality.total_hardness, turbidity: @water_quality.turbidity, zinc: @water_quality.zinc }
    assert_redirected_to water_quality_path(assigns(:water_quality))
  end

  test "should destroy water_quality" do
    assert_difference('WaterQuality.count', -1) do
      delete :destroy, id: @water_quality
    end

    assert_redirected_to water_qualities_path
  end
end
