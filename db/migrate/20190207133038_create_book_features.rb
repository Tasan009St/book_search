class CreateBookFeatures < ActiveRecord::Migration[5.2]
  def change
    create_table :book_features do |t|
      t.string :book_id
      t.references :feature, foreign_key: true
      t.timestamps
    end
  end
end
