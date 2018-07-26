class CreateDisciplines < ActiveRecord::Migration[5.2]
  def change
    create_table :disciplines do |t|
      t.string :name
      t.string :university
      t.string :speciality
      t.string :user
      t.integer :estimation

      t.timestamps
    end
  end
end
