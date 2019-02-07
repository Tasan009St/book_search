class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books,id: false do |t|      
      t.string :book_id, primary_key: true
      t.string :isbn
      t.references :author, foreign_key: true
      t.string :title
      t.string :cover_image_path
      t.string :publisher
      t.date :first_publish
      t.timestamps
    end
    add_index :books, [:book_id], unique: true
  end
end
