class Chapter < ActiveRecord::Base
  has_many :verses
  validates :name, presence: true
end
