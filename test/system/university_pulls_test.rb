require "application_system_test_case"

class UniversityPullsTest < ApplicationSystemTestCase
  setup do
    @university_pull = university_pulls(:one)
  end

  test "visiting the index" do
    visit university_pulls_url
    assert_selector "h1", text: "University Pulls"
  end

  test "creating a University pull" do
    visit university_pulls_url
    click_on "New University Pull"

    fill_in "Key", with: @university_pull.key
    fill_in "Name", with: @university_pull.name
    click_on "Create University pull"

    assert_text "University pull was successfully created"
    click_on "Back"
  end

  test "updating a University pull" do
    visit university_pulls_url
    click_on "Edit", match: :first

    fill_in "Key", with: @university_pull.key
    fill_in "Name", with: @university_pull.name
    click_on "Update University pull"

    assert_text "University pull was successfully updated"
    click_on "Back"
  end

  test "destroying a University pull" do
    visit university_pulls_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "University pull was successfully destroyed"
  end
end
