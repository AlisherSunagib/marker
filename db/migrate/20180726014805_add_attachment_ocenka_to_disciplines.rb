class AddAttachmentOcenkaToDisciplines < ActiveRecord::Migration[5.2]
  def self.up
    change_table :disciplines do |t|
      t.attachment :ocenka
    end
  end

  def self.down
    remove_attachment :disciplines, :ocenka
  end
end
