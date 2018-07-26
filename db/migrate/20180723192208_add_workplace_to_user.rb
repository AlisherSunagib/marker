class AddWorkplaceToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :workplace, :string
  end
end
