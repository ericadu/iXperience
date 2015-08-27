class CreateCatsAndPlaces < ActiveRecord::Migration
  def change
    create_table :cats_places, id: false do |t|
      t.belongs_to :cat, index: true
      t.belongs_to :place, index: true
    end
  end
end
