class AddLikesToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :likes, :integer, :default => 0
  end
end
