class ChangeColumnNameForUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :type, :category
  end
end
