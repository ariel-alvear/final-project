class CreateAvaibleHours < ActiveRecord::Migration[5.2]
  def change
    create_table :avaible_hours do |t|
      t.time :time
      t.date :date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
