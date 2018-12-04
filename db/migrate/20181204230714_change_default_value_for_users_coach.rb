class ChangeDefaultValueForUsersCoach < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :is_a_coach, :boolean, :default => false
  end
end
