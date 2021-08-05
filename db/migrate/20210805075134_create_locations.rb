class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :country
      t.string :state
      t.string :city
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
