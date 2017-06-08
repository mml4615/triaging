class CreateEvaluations < ActiveRecord::Migration[5.0]
  def change
    create_table :evaluations do |t|
      t.integer :user_id
      t.boolean :prescription
      t.integer :alcohol_use
      t.boolean :drug_use
      t.string :feeling
      t.string :appointment_reason
      t.boolean :thoughts_suicide_harm
      t.boolean :attempted_suicide
      t.string :unsafe_sex
      t.boolean :violent_behaviour
      t.boolean :domestic_abuse
      t.boolean :criminal_activity
      t.string :diagnosed_condition
      t.string :hospital_admissions
      t.string :hallucinations
      t.string :disability
      t.string :availability
      t.string :insurance

      t.timestamps

    end
  end
end
