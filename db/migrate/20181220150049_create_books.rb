class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :isbn
      t.string :author_id
      t.string :title
      t.string :cover_image_path
      t.string :publisher
      t.date :first_publish

      t.timestamps
    end
  end
end
