class ChangeTypeOfDuration < ActiveRecord::Migration[5.2]
  def change
    change_column :services, :duration, 'integer USING CAST(duration AS integer)'
  end
end
