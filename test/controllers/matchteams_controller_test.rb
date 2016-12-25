require 'test_helper'

class MatchteamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @matchteam = matchteams(:one)
  end

  test "should get index" do
    get matchteams_url
    assert_response :success
  end

  test "should get new" do
    get new_matchteam_url
    assert_response :success
  end

  test "should create matchteam" do
    assert_difference('Matchteam.count') do
      post matchteams_url, params: { matchteam: { home: @matchteam.home, mattch_id: @matchteam.mattch_id, team_id: @matchteam.team_id } }
    end

    assert_redirected_to matchteam_url(Matchteam.last)
  end

  test "should show matchteam" do
    get matchteam_url(@matchteam)
    assert_response :success
  end

  test "should get edit" do
    get edit_matchteam_url(@matchteam)
    assert_response :success
  end

  test "should update matchteam" do
    patch matchteam_url(@matchteam), params: { matchteam: { home: @matchteam.home, mattch_id: @matchteam.mattch_id, team_id: @matchteam.team_id } }
    assert_redirected_to matchteam_url(@matchteam)
  end

  test "should destroy matchteam" do
    assert_difference('Matchteam.count', -1) do
      delete matchteam_url(@matchteam)
    end

    assert_redirected_to matchteams_url
  end
end
