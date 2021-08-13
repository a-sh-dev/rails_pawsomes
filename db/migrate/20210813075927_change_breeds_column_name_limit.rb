class ChangeBreedsColumnNameLimit < ActiveRecord::Migration[6.1]
  def change
    change_column :breeds, :name, :string, :limit => nil
  end
end
