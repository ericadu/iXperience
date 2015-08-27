class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :address
      t.text :description
      t.text :image
      t.integer :rating

      t.timestamps
    end
  end
end
