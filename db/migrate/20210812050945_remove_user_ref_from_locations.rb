class RemoveUserRefFromLocations < ActiveRecord::Migration[6.1]
  def change
    remove_reference :locations, :user, null: false, foreign_key: true
  end
end
