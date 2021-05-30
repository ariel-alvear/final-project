class ChangeTypeOfDuration < ActiveRecord::Migration[5.2]
  def change
    change_column :services, :duration, :integer, using: 'duration::integer'
  end
end
