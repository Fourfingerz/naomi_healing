class PutBackEmergencyContactInfo < ActiveRecord::Migration
  def change
  	add_column :clients, :emergency_contact_name, :string
  	add_column :clients, :emergency_contact_phone, :string
  	add_column :clients, :emergency_relationship_to_client, :string
  	add_column :clients, :concerns_questions, :string
  	add_column :visits, :session_type, :string
  	add_column :visits, :session_notes, :string
  	remove_column :visits, :concerns_questions, :string 
  	remove_column :visits, :notes_comments, :string
  end
end
