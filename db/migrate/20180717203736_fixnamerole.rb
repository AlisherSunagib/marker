class Fixnamerole < ActiveRecord::Migration[5.2]
  def change
  	rename_column :Users, :roles, :role
  end
end
