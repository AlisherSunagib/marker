require "application_system_test_case"

class SyllabusesTest < ApplicationSystemTestCase
  setup do
    @syllabus = syllabuses(:one)
  end

  test "visiting the index" do
    visit syllabuses_url
    assert_selector "h1", text: "Syllabuses"
  end

  test "creating a Syllabus" do
    visit syllabuses_url
    click_on "New Syllabus"

    fill_in "Coordinator", with: @syllabus.coordinator
    fill_in "School", with: @syllabus.school
    fill_in "University", with: @syllabus.university
    click_on "Create Syllabus"

    assert_text "Syllabus was successfully created"
    click_on "Back"
  end

  test "updating a Syllabus" do
    visit syllabuses_url
    click_on "Edit", match: :first

    fill_in "Coordinator", with: @syllabus.coordinator
    fill_in "School", with: @syllabus.school
    fill_in "University", with: @syllabus.university
    click_on "Update Syllabus"

    assert_text "Syllabus was successfully updated"
    click_on "Back"
  end

  test "destroying a Syllabus" do
    visit syllabuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Syllabus was successfully destroyed"
  end
end
