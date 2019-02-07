class CreateFeatures < ActiveRecord::Migration[5.2]
  def change
    create_table :features do |t|
      t.string :feature_id
      t.string :feature_name
      t.timestamps
    end
  end
end
