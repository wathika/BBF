class Bike < ApplicationRecord
  validates_presence_of :motorNo, :colour
  validates_uniqueness_of :motorNo, :message "Serial number exists!"
end
