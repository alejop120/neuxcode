class CourseHasSubject < ApplicationRecord
  belongs_to :course
  belongs_to :subject
  belongs_to :teacher
end
