class Client < ActiveRecord::Base
  has_many :visits
  validates_formatting_of :zip_code, using: :us_zip
  validates_formatting_of :cell_phone, using: :us_phone
  validates_formatting_of :work_phone, using: :us_phone
  validates_formatting_of :home_phone, using: :us_phone
  validates_formatting_of :email_address, using: :email
  validates_formatting_of :emergency_contact_phone, using: :us_phone
end
