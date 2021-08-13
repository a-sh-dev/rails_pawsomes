class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.references :owner, null: false, foreign_key: {to_table: :users}
      t.references :breed, null: false, foreign_key: true
      t.string :name
      t.date :dob
      t.integer :gender
      t.string :bio
      t.string :instagram

      t.timestamps
    end
  end
end
