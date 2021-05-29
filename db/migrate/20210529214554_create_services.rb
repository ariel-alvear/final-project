class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :name
      t.string :description
      t.time :duration
      t.decimal :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
