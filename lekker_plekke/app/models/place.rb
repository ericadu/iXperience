class Place < ActiveRecord::Base
  has_many :comments
  has_and_belongs_to_many :cats
  validates :name, presence: true

  def liked!
    self.likes = self.likes + 1
    self.save
  end
end
