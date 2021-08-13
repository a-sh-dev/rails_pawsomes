class ChangeBreedsColumnFromTypeToName < ActiveRecord::Migration[6.1]
  def change
    rename_column :breeds, :type, :name
  end
end
