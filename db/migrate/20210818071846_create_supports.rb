class CreateSupports < ActiveRecord::Migration[6.1]
  def change
    create_table :supports do |t|
      t.references :supporter, null: false, foreign_key: {to_table: :users}
      t.references :supported_pet, null: false, foreign_key: {to_table: :pets}

      t.timestamps
    end
  end
end
