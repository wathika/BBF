class Battery < ApplicationRecord
  validates_presence_of :batteryNo
  validates_uniqueness_of :batteryNo, message: "Serial number exists!"
  before_validation :format_serial_no


  protected
    def format_serial_no
      self.batteryNo = batteryNo.gsub(/\D/, "")
      self.batteryNo = batteryNo.gsub(/\d+/, "BBM(B)N#{format_serial_no_length(batteryNo)}")
    end

    def format_serial_no_length(num)
      # consider ruby method .rjust()
      r = "" + num
      while r.length < 8
        r = "0" + r
      end
      return r
    end
end
