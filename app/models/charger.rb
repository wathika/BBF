class Charger < ApplicationRecord
  validates_presence_of :chargerNo
  validates_uniqueness_of :chargerNo, message: "Serial number exists"
  before_validation :format_serial_no


  protected
    def format_serial_no
      self.chargerNo = chargerNo.gsub(/\D/, "")
      self.chargerNo = chargerNo.gsub(/\d+/, "BBM(B)N#{format_serial_no_length(chargerNo)}")
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
