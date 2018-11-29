class CreateCourseHasSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :course_has_subjects do |t|
      t.references :course, foreign_key: true, null: false
      t.references :subject, foreign_key: true, null: false
      t.references :teacher, foreign_key: true, null: false

      t.timestamps
    end
  end
end
