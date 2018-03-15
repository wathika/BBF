class Bike < ApplicationRecord
  validates_presence_of :motorNo, :colour
end
