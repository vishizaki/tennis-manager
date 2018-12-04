class CreateFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :feedbacks do |t|
      t.string :name
      t.text :description
      t.string :group
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
