class Verse < ActiveRecord::Base
  belongs_to :chapter
  validates :text, presence: true
end
