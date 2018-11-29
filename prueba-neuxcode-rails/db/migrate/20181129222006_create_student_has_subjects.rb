class CreateStudentHasSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :student_has_subjects do |t|
      t.references :subject, foreign_key: true
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
