class ChangeTypeLessonsAndMatches < ActiveRecord::Migration[5.2]
  def change
    change_column :matches, :date, :datetime
    change_column :lessons, :date, :datetime
  end
end
