require "application_system_test_case"

class SpecialityPullsTest < ApplicationSystemTestCase
  setup do
    @speciality_pull = speciality_pulls(:one)
  end

  test "visiting the index" do
    visit speciality_pulls_url
    assert_selector "h1", text: "Speciality Pulls"
  end

  test "creating a Speciality pull" do
    visit speciality_pulls_url
    click_on "New Speciality Pull"

    fill_in "Key", with: @speciality_pull.key
    fill_in "Name", with: @speciality_pull.name
    click_on "Create Speciality pull"

    assert_text "Speciality pull was successfully created"
    click_on "Back"
  end

  test "updating a Speciality pull" do
    visit speciality_pulls_url
    click_on "Edit", match: :first

    fill_in "Key", with: @speciality_pull.key
    fill_in "Name", with: @speciality_pull.name
    click_on "Update Speciality pull"

    assert_text "Speciality pull was successfully updated"
    click_on "Back"
  end

  test "destroying a Speciality pull" do
    visit speciality_pulls_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Speciality pull was successfully destroyed"
  end
end
