class CreateSpecialityPulls < ActiveRecord::Migration[5.2]
  def change
    create_table :speciality_pulls do |t|
      t.string :key
      t.string :name

      t.timestamps
    end
  end
end
