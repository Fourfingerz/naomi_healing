class RemoveFieldsFromVisits < ActiveRecord::Migration
  def change
  		remove_column :visits, :visiting_date, :datetime
  		remove_column :visits, :scheduled_time, :string
  		remove_column :visits, :overall_balance, :decimal
  end
end
