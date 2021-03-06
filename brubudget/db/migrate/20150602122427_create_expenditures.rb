class CreateExpenditures < ActiveRecord::Migration
  def change
    create_table :expenditures do |t|
      t.decimal :price, :precision => 8, :scale => 2
      t.integer :quantity
      t.string :name
      t.datetime :purchase_date
      t.references :user, index: true

      t.timestamps null: false
    end

    add_foreign_key :expenditures, :users
  end
end
