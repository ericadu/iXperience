class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :text
      t.references :place, index: true

      t.timestamps null: false
    end
  end
end
