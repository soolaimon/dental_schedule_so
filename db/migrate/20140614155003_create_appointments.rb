class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :time
      t.belongs_to :person, index: true
      t.string :dentist
      t.text :description
      t.boolean :is_checkup
      t.integer :estimated_cost, default: 0

      t.timestamps
    end
  end
end
