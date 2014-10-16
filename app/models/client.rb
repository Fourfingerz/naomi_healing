class Client < ActiveRecord::Base
  has_many :visits
  validates_formatting_of :zip_code, using: :us_zip
  validates_formatting_of :cell_phone, using: :us_phone
end
