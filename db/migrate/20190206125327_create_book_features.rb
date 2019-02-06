class CreateBookFeatures < ActiveRecord::Migration[5.2]
  def change
    create_table :book_features do |t|
      t.string :isbn
      t.integer :fetnum

      t.timestamps
    end
  end
end
