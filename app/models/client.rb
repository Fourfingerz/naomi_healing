class Client < ActiveRecord::Base
  has_many :visits
  validates_formatting_of :zip_code, using: :us_zip
end
