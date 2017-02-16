class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.string :letter_grade
      t.string :comment
      t.string :course
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
