class CreateScales < ActiveRecord::Migration
  def change
    create_table :scales do |t|
      t.string :name_employee
      t.string :day
      t.integer :shechule_initial_hours
      t.integer :schedule_initial_minutes
      t.integer :schedule_final_hours
      t.integer :schedule_final_minutes

      t.timestamps null: false
    end
  end
end
