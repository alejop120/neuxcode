class Student < ApplicationRecord
  belongs_to :course
  has_many :student_has_subjects
  has_many :subjects, through: :student_has_subjects

  def as_json(options={})
    super(include: :subjects)
  end

end
