class CreateAttachments < ActiveRecord::Migration[5.2]
  def change
    create_table :attachments do |t|
      t.string :file_name
      t.string :string
      t.string :file
      t.string :text
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
