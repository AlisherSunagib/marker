class AddAttachmentDocumentToSyllabuses < ActiveRecord::Migration[5.2]
  def self.up
    change_table :syllabuses do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :syllabuses, :document
  end
end
