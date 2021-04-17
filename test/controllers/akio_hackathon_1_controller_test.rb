require 'test_helper'

class AkioHackathon1ControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get akio_hackathon_1_top_url
    assert_response :success
  end

  test "should get apps_index" do
    get akio_hackathon_1_apps_index_url
    assert_response :success
  end

  test "should get apps_show" do
    get akio_hackathon_1_apps_show_url
    assert_response :success
  end

  test "should get description_form" do
    get akio_hackathon_1_description_form_url
    assert_response :success
  end

  test "should get webgl_form" do
    get akio_hackathon_1_webgl_form_url
    assert_response :success
  end

  test "should get details_form" do
    get akio_hackathon_1_details_form_url
    assert_response :success
  end

  test "should get admin_organize_form" do
    get akio_hackathon_1_admin_organize_form_url
    assert_response :success
  end

  test "should get admin_award_form" do
    get akio_hackathon_1_admin_award_form_url
    assert_response :success
  end

  test "should get new_app_form" do
    get akio_hackathon_1_new_app_form_url
    assert_response :success
  end

  test "should get teams_index" do
    get akio_hackathon_1_teams_index_url
    assert_response :success
  end

  test "should get teams_show" do
    get akio_hackathon_1_teams_show_url
    assert_response :success
  end

  test "should get teams_settings_form" do
    get akio_hackathon_1_teams_settings_form_url
    assert_response :success
  end

  test "should get participants" do
    get akio_hackathon_1_participants_url
    assert_response :success
  end

  test "should get participate_form" do
    get akio_hackathon_1_participate_form_url
    assert_response :success
  end

  test "should get result" do
    get akio_hackathon_1_result_url
    assert_response :success
  end

end
