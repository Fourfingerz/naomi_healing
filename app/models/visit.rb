class Visit < ActiveRecord::Base
  belongs_to :client

  scope :currentday, lambda {find(scheduled_date: Date.today)}
  scope :sorted, order(:datetime => :desc)
end
