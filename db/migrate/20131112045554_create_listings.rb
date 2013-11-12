class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.timestamps null: false
      t.boolean :active, default: true, null: false
      t.text :address, null: false
      t.float :bath_count, null: false
      t.float :bed_count, null: false
      t.string :floor_plan, null: false
      t.text :neighborhood
      t.text :pmc
      t.float :rent, null: false
      t.float :square_feet, null: false
      t.text :url, null: false
      t.text :uuid, null: false
    end

    add_index :listings, :uuid, unique: true
  end
end
