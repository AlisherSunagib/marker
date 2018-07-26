class CreateSyllabuses < ActiveRecord::Migration[5.2]
  def change
    create_table :syllabuses do |t|
      t.string :school
      t.string :university
      t.string :coordinator

      t.timestamps
    end
  end
end
