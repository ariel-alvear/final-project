class AddColumnsToUserModel < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :last_name, :string
    add_column :users, :document_id, :string
    add_column :users, :profile, :integer
    add_column :users, :profesion_id, :integer
    add_foreign_key :users, :profesions
  end
end
