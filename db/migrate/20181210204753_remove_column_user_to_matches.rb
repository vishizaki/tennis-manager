class RemoveColumnUserToMatches < ActiveRecord::Migration[5.2]
  def change
    remove_column :matches, :user_id
  end
end
