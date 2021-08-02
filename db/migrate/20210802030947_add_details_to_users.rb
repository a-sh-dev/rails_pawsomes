class AddDetailsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :username, :string
    add_column :users, :pet_owner, :boolean
    add_column :users, :paypal_me, :string
    add_column :users, :bio, :string
  end
end
