class RemoveFieldsFromClients < ActiveRecord::Migration
  def change
  	remove_column :clients, :suffix, :string
  	remove_column :clients, :home_phone, :string
  	remove_column :clients, :work_phone, :string
  	remove_column :clients, :emergency_contact_name, :string
  	remove_column :clients, :emergency_contact_phone, :string
  	remove_column :clients, :emergency_relationship_to_client, :string
  	remove_column :clients, :client_ethnicity, :string
  	remove_column :visits, :diagnosis_advice, :string
  	add_column :clients, :alternative_phone, :string
  end
end
