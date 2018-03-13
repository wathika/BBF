class Bike < ApplicationRecord
  validates_presence_of :motorNo, :batteryNo, :chargerNo, :colour
  validates_uniqueness_of :motorNo, :batteryNo, :chargerNo
end
