class ChangeSessionLengthToDateTime < ActiveRecord::Migration
  def change
  	remove_column :visits, :session_length, :string
  	add_column :visits, :session_length, :datetime
  end
end
