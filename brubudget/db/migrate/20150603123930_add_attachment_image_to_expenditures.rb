class AddAttachmentImageToExpenditures < ActiveRecord::Migration
  def self.up
    change_table :expenditures do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :expenditures, :image
  end
end
