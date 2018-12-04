class AddStudentIdtoLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :student_id, :integer
    add_index :lessons, :student_id
  end
end
