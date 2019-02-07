class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :author_id
      t.string :author_name
      t.timestamps
    end
  end
end
