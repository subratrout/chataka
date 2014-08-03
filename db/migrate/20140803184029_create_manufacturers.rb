class CreateManufacturers < ActiveRecord::Migration
  def self.up
    create_table :manufacturers do |t|
      t.string :manufacturer_name
      t.string :brand_name
      t.text :street1
      t.text :street2
      t.text :post_office
      t.string :city
      t.string :dist
      t.string :state
      t.text :pin
      t.string :mobile
      t.string :cml_no
      t.date :valid_date
      t.boolean :operative_status
      t.boolean :bottle_20liters
      t.boolean :bottle_2liters
      t.boolean :bottle_1liter
      t.boolean :bottle_500ml
      t.string :email
      t.text :description

      t.timestamps
    end

    add_index :manufacturers, :manufacturer_name
    add_index :manufacturers, :brand_name
    add_index :manufacturers, :street1
    add_index :manufacturers, :street2
    add_index :manufacturers, :post_office
    add_index :manufacturers, :city
    add_index :manufacturers, :dist
    add_index :manufacturers, :state
    add_index :manufacturers, :pin
    add_index :manufacturers, :mobile
    add_index :manufacturers, :cml_no
    add_index :manufacturers, :valid_date
    add_index :manufacturers, :email
    add_index :manufacturers, :description
  end

  def self.down
    drop_tabale :manufacturers
  end


end
