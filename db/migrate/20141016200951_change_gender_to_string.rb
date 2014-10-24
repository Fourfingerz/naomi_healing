class ChangeGenderToString < ActiveRecord::Migration
  def change
  	change_column :clients, :gender, :string
  end
end
