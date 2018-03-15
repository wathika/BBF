class Bike < ApplicationRecord
  validates_format_of :motorNo, with: /BBF\(M\)N\d+/, message: "Please enter motor number in the following format: BBM(M)N********"
  validates_format_of :batteryNo, with: /BBF\(B\)N\d+/, message: "Please enter battery number in the following format: BBM(B)N********"
  validates_format_of :chargerNo, with: /BBF\(C\)N\d+/, message: "Please enter motor number in the following format: BBM(C)N********"
  validates_presence_of :motorNo, :batteryNo, :chargerNo, :colour
  validates_uniqueness_of :motorNo, :batteryNo, :chargerNo, message: "Serial number already exists"
