class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.integer :estado
      t.references :user, foreign_key: true
      t.references :avaible_hour, foreign_key: true
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end
