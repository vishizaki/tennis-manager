class RemoveColumnFromFeedback < ActiveRecord::Migration[5.2]
  def change
    remove_column :feedbacks, :user_id
  end
end
