class AddCoachIdToLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :coach_id, :integer
    add_index :lessons, :coach_id
  end
end
