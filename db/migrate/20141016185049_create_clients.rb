class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :suffix
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :cell_phone
      t.string :work_phone
      t.string :home_phone
      t.integer :gender
      t.datetime :birth_date
      t.string :email_address
      t.datetime :signup_date
      t.string :emergency_contact_name
      t.string :emergency_contact_phone
      t.string :emergency_relationship_to_client
      t.integer :client_age
      t.decimal :overall_balance
      t.string :client_ethnicity

      t.timestamps
    end
  end
end
