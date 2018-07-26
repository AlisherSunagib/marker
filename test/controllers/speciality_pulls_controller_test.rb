require 'test_helper'

class SpecialityPullsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @speciality_pull = speciality_pulls(:one)
  end

  test "should get index" do
    get speciality_pulls_url
    assert_response :success
  end

  test "should get new" do
    get new_speciality_pull_url
    assert_response :success
  end

  test "should create speciality_pull" do
    assert_difference('SpecialityPull.count') do
      post speciality_pulls_url, params: { speciality_pull: { key: @speciality_pull.key, name: @speciality_pull.name } }
    end

    assert_redirected_to speciality_pull_url(SpecialityPull.last)
  end

  test "should show speciality_pull" do
    get speciality_pull_url(@speciality_pull)
    assert_response :success
  end

  test "should get edit" do
    get edit_speciality_pull_url(@speciality_pull)
    assert_response :success
  end

  test "should update speciality_pull" do
    patch speciality_pull_url(@speciality_pull), params: { speciality_pull: { key: @speciality_pull.key, name: @speciality_pull.name } }
    assert_redirected_to speciality_pull_url(@speciality_pull)
  end

  test "should destroy speciality_pull" do
    assert_difference('SpecialityPull.count', -1) do
      delete speciality_pull_url(@speciality_pull)
    end

    assert_redirected_to speciality_pulls_url
  end
end
