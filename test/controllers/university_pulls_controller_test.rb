require 'test_helper'

class UniversityPullsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @university_pull = university_pulls(:one)
  end

  test "should get index" do
    get university_pulls_url
    assert_response :success
  end

  test "should get new" do
    get new_university_pull_url
    assert_response :success
  end

  test "should create university_pull" do
    assert_difference('UniversityPull.count') do
      post university_pulls_url, params: { university_pull: { key: @university_pull.key, name: @university_pull.name } }
    end

    assert_redirected_to university_pull_url(UniversityPull.last)
  end

  test "should show university_pull" do
    get university_pull_url(@university_pull)
    assert_response :success
  end

  test "should get edit" do
    get edit_university_pull_url(@university_pull)
    assert_response :success
  end

  test "should update university_pull" do
    patch university_pull_url(@university_pull), params: { university_pull: { key: @university_pull.key, name: @university_pull.name } }
    assert_redirected_to university_pull_url(@university_pull)
  end

  test "should destroy university_pull" do
    assert_difference('UniversityPull.count', -1) do
      delete university_pull_url(@university_pull)
    end

    assert_redirected_to university_pulls_url
  end
end
