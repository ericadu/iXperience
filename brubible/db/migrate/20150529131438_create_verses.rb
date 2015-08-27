class CreateVerses < ActiveRecord::Migration
  def change
    create_table :verses do |t|
      t.text :text
      t.references :chapter, index:true

      t.timestamps null: false
    end
  end
end
