class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :dificulty
      t.references :generation, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
