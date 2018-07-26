class CreateEstimations < ActiveRecord::Migration[5.2]
  def change
    create_table :estimations do |t|
      t.string :user
      t.string :discipline
      t.string :speciality
      t.string :university

      t.timestamps
    end
  end
end
