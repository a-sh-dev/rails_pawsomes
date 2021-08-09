class CreateBreeds < ActiveRecord::Migration[6.1]
  def change
    create_table :breeds do |t|
      t.string :type, limit: 20
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
