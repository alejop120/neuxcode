require "application_system_test_case"

class CourseHasSubjectsTest < ApplicationSystemTestCase
  setup do
    @course_has_subject = course_has_subjects(:one)
  end

  test "visiting the index" do
    visit course_has_subjects_url
    assert_selector "h1", text: "Course Has Subjects"
  end

  test "creating a Course has subject" do
    visit course_has_subjects_url
    click_on "New Course Has Subject"

    fill_in "Course", with: @course_has_subject.course_id
    fill_in "Subject", with: @course_has_subject.subject_id
    fill_in "Teacher", with: @course_has_subject.teacher_id
    click_on "Create Course has subject"

    assert_text "Course has subject was successfully created"
    click_on "Back"
  end

  test "updating a Course has subject" do
    visit course_has_subjects_url
    click_on "Edit", match: :first

    fill_in "Course", with: @course_has_subject.course_id
    fill_in "Subject", with: @course_has_subject.subject_id
    fill_in "Teacher", with: @course_has_subject.teacher_id
    click_on "Update Course has subject"

    assert_text "Course has subject was successfully updated"
    click_on "Back"
  end

  test "destroying a Course has subject" do
    visit course_has_subjects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Course has subject was successfully destroyed"
  end
end
