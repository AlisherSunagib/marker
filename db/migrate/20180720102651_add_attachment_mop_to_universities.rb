class AddAttachmentMopToUniversities < ActiveRecord::Migration[5.2]
  def self.up
    change_table :universities do |t|
      t.attachment :mop
    end
  end

  def self.down
    remove_attachment :universities, :mop
  end
end
