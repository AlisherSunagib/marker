class AddAttachmentOcenListEditedToEstimations < ActiveRecord::Migration[5.2]
  def self.up
    change_table :estimations do |t|
      t.attachment :ocen_list_edited
    end
  end

  def self.down
    remove_attachment :estimations, :ocen_list_edited
  end
end
