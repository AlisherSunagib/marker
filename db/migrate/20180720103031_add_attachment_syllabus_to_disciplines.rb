class AddAttachmentSyllabusToDisciplines < ActiveRecord::Migration[5.2]
  def self.up
    change_table :disciplines do |t|
      t.attachment :syllabus
    end
  end

  def self.down
    remove_attachment :disciplines, :syllabus
  end
end
