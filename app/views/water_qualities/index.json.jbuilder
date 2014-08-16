json.array!(@water_qualities) do |water_quality|
  json.extract! water_quality, :id, :city, :state, :address, :address1, :address2, :place, :latitude, :longitude, :test_year, :source, :source_type, :source_owner, :color_hazen_unit, :odor, :taste, :turbidity, :ph_value, :total_hardness, :iron, :chloride, :residual_free_chlorine, :fluoride, :total_dissolved_solids, :calcium, :magnesium, :copper, :manganese, :sulphate, :nitrate, :phenolic_compounds, :mercury, :cadmium, :selenium, :arsenic, :cyanide, :lead, :zinc, :sodium, :potassium, :hexavalent_chromium, :alkalinity, :pesticides, :detergent, :mineral_oil, :electrical_conductivity, :dissolved_oxygen, :biological_oxygen_demand, :chemical_oxygen_demand, :coliform
  json.url water_quality_url(water_quality, format: :json)
end
