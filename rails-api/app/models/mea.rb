class Mea < ApplicationRecord
  has_many :questionnaires

  validates :name_short, presence: true 
end
