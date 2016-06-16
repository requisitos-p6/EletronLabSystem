class AddAttachmentValidationImageToUser < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :validation_image
    end
  end

  def self.down
    remove_attachment :users, :validation_image
  end
end