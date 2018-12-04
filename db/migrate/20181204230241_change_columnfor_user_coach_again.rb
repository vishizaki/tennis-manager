class ChangeColumnforUserCoachAgain < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :is_a_coach?, :is_a_coach
  end
end
