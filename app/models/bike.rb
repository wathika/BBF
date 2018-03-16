class Bike < ApplicationRecord
  validates_presence_of :motorNo, :colour
  validates_uniqueness_of :motorNo, message: "Serial number exists!"
  before_validation :format_serial_no
  before_save do
    validates_format_of :motorNo, with: /BBF\(M\)N\d+/, message: "motor number was not parsed into the format: BBM(M)N********: contact system dev"
  end
  # validates_format_of :motorNo, with: /BBF\(M\)N\d+/, message: "motor number was not parsed into the format: BBM(M)N********: contact system dev"


  protected
    def format_serial_no
      self.motorNo = motorNo.gsub(/\D/, "")
      self.motorNo = motorNo.gsub(/\d+/, "BBM(M)N#{format_serial_no_length(motorNo)}")
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
