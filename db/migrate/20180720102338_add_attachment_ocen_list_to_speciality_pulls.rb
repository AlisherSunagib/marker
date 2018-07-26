class AddAttachmentOcenListToSpecialityPulls < ActiveRecord::Migration[5.2]
  def self.up
    change_table :speciality_pulls do |t|
      t.attachment :ocen_list
    end
  end

  def self.down
    remove_attachment :speciality_pulls, :ocen_list
  end
end
