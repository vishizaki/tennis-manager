class ChangeColumnTypeForUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :is_a_coach, 'boolean USING CAST(is_a_coach AS boolean)'
  end
end
