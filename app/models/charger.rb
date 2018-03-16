class Charger < ApplicationRecord
  validates_presence_of :chargerNo
  validates_uniqueness_of :chargerNo, message: "Serial number exists"
end
