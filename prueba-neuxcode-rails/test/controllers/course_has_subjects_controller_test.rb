require 'test_helper'

class CourseHasSubjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course_has_subject = course_has_subjects(:one)
  end

  test "should get index" do
    get course_has_subjects_url
    assert_response :success
  end

  test "should get new" do
    get new_course_has_subject_url
    assert_response :success
  end

  test "should create course_has_subject" do
    assert_difference('CourseHasSubject.count') do
      post course_has_subjects_url, params: { course_has_subject: { course_id: @course_has_subject.course_id, subject_id: @course_has_subject.subject_id, teacher_id: @course_has_subject.teacher_id } }
    end

    assert_redirected_to course_has_subject_url(CourseHasSubject.last)
  end

  test "should show course_has_subject" do
    get course_has_subject_url(@course_has_subject)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_has_subject_url(@course_has_subject)
    assert_response :success
  end

  test "should update course_has_subject" do
    patch course_has_subject_url(@course_has_subject), params: { course_has_subject: { course_id: @course_has_subject.course_id, subject_id: @course_has_subject.subject_id, teacher_id: @course_has_subject.teacher_id } }
    assert_redirected_to course_has_subject_url(@course_has_subject)
  end

  test "should destroy course_has_subject" do
    assert_difference('CourseHasSubject.count', -1) do
      delete course_has_subject_url(@course_has_subject)
    end

    assert_redirected_to course_has_subjects_url
  end
end
