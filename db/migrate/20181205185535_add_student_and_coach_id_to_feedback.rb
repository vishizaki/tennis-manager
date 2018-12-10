class AddStudentAndCoachIdToFeedback < ActiveRecord::Migration[5.2]
  def change
    add_column :feedbacks, :coach_id, :integer
    add_index :feedbacks, :coach_id
    add_column :feedbacks, :student_id, :integer
    add_index :feedbacks, :student_id
  end
end
