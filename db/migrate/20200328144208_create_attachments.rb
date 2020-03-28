class CreateAttachments < ActiveRecord::Migration[6.0]
  def change
    create_table :attachments do |t|
      t.integer :investor_id
      t.string :filename
      t.string :content_type
      t.binary :data

      t.timestamps
    end
  end
end
