class Organisation < ApplicationRecord
  validates :name_short, presence: true
end
