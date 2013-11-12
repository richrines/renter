class CreateListingImages < ActiveRecord::Migration
  def change
    create_table :listing_images do |t|
      t.timestamps null: false
      t.belongs_to :listing
      t.string :image
    end
  end
end
