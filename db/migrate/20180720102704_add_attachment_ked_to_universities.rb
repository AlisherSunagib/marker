class AddAttachmentKedToUniversities < ActiveRecord::Migration[5.2]
  def self.up
    change_table :universities do |t|
      t.attachment :ked
    end
  end

  def self.down
    remove_attachment :universities, :ked
  end
end
