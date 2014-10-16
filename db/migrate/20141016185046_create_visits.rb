class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.datetime :visiting_date
      t.text :concerns_questions
      t.datetime :scheduled_date
      t.string :scheduled_time
      t.text :notes_comments
      t.text :diagnosis_advice
      t.string :session_length
      t.decimal :session_balance_due
      t.decimal :session_balance_paid
      t.decimal :overall_balance
      t.references :client, index: true

      t.timestamps
    end
  end
end
