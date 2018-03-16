class Battery < ApplicationRecord
  validates_presence_of :batteryNo
  validates_uniqueness_of :batteryNo, message: "Serial number exists!"
end
