class CreateWaterQualities < ActiveRecord::Migration
  def self.up
    create_table :water_qualities do |t|
      t.string :city
      t.string :state
      t.string :address
      t.string :address1
      t.string :address2
      t.string :place
      t.float :latitude
      t.float :longitude
      t.string :test_year
      t.string :source
      t.string :source_type
      t.string :source_owner
      t.string :color_hazen_unit
      t.string :odor
      t.string :taste
      t.string :turbidity
      t.string :ph_value
      t.string :total_hardness
      t.string :iron
      t.string :chloride
      t.string :residual_free_chlorine
      t.string :fluoride
      t.string :total_dissolved_solids
      t.string :calcium
      t.string :magnesium
      t.string :copper
      t.string :manganese
      t.string :sulphate
      t.string :nitrate
      t.string :phenolic_compounds
      t.string :mercury
      t.string :cadmium
      t.string :selenium
      t.string :arsenic
      t.string :cyanide
      t.string :lead
      t.string :zinc
      t.string :sodium
      t.string :potassium
      t.string :hexavalent_chromium
      t.string :alkalinity
      t.string :pesticides
      t.string :detergent
      t.string :mineral_oil
      t.string :electrical_conductivity
      t.string :dissolved_oxygen
      t.string :biological_oxygen_demand
      t.string :chemical_oxygen_demand
      t.string :coliform

      t.timestamps
    end

     add_index :water_qualities, :city
    add_index :water_qualities, :state
    add_index :water_qualities, :address
    add_index :water_qualities, :address1
    add_index :water_qualities, :address2
    add_index :water_qualities, :place
    add_index :water_qualities, :latitude
    add_index :water_qualities, :longitude
    add_index :water_qualities, :test_year
    add_index :water_qualities, :source
    add_index :water_qualities, :source_type
    add_index :water_qualities, :source_owner
  end

  def self.down
    drop_tabale :water_qualities
  end
end
