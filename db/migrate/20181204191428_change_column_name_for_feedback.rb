class ChangeColumnNameForFeedback < ActiveRecord::Migration[5.2]
  def change
    rename_column :feedbacks, :name, :title
  end
end
