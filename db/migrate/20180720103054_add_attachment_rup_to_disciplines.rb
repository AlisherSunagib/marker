class AddAttachmentRupToDisciplines < ActiveRecord::Migration[5.2]
  def self.up
    change_table :disciplines do |t|
      t.attachment :rup
    end
  end

  def self.down
    remove_attachment :disciplines, :rup
  end
end
