class CreateCourts < ActiveRecord::Migration[5.2]
  def change
    create_table :courts do |t|
      t.string :name
      t.string :location
      t.string :lat
      t.string :lng

      t.timestamps
    end
  end
end
