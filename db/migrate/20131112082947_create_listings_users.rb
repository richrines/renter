class CreateListingsUsers < ActiveRecord::Migration
  def change
    create_table :user_listings do |t|
      t.timestamps null: false
      t.boolean :liked, default: false, null: false
      t.belongs_to :listing
      t.belongs_to :user
      t.boolean :viewed, default: false, null: false
    end
  end
end
