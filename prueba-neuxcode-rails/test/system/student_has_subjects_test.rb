require "application_system_test_case"

class StudentHasSubjectsTest < ApplicationSystemTestCase
  setup do
    @student_has_subject = student_has_subjects(:one)
  end

  test "visiting the index" do
    visit student_has_subjects_url
    assert_selector "h1", text: "Student Has Subjects"
  end

  test "creating a Student has subject" do
    visit student_has_subjects_url
    click_on "New Student Has Subject"

    fill_in "Student", with: @student_has_subject.student_id
    fill_in "Subject", with: @student_has_subject.subject_id
    click_on "Create Student has subject"

    assert_text "Student has subject was successfully created"
    click_on "Back"
  end

  test "updating a Student has subject" do
    visit student_has_subjects_url
    click_on "Edit", match: :first

    fill_in "Student", with: @student_has_subject.student_id
    fill_in "Subject", with: @student_has_subject.subject_id
    click_on "Update Student has subject"

    assert_text "Student has subject was successfully updated"
    click_on "Back"
  end

  test "destroying a Student has subject" do
    visit student_has_subjects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student has subject was successfully destroyed"
  end
end
