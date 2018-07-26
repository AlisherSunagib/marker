class CreateUniversityPulls < ActiveRecord::Migration[5.2]
  def change
    create_table :university_pulls do |t|
      t.integer :key
      t.string :name

      t.timestamps
    end
  end
end
