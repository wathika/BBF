class Bike < ApplicationRecord
  validates_presence_of :motorNo, :batteryNo, :chargerNo, :colour
  validates_uniqueness_of :motorNo, :batteryNo, :chargerNo, message: "Serial number already exists"
  # validates_format_of :motorNo, with: '', message: "Please enter motor number in the following format: BBM(M)********"
  # validates_format_of :batteryNo, with: '', message: "Please enter battery number in the following format: BBM(B)********"
  # validates_format_of :chargerNo, with: '', message: "Please enter motor number in the following format: BBM(M)********"
end
