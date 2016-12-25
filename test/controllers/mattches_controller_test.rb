require 'test_helper'

class MattchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mattch = mattches(:one)
  end

  test "should get index" do
    get mattches_url
    assert_response :success
  end

  test "should get new" do
    get new_mattch_url
    assert_response :success
  end

  test "should create mattch" do
    assert_difference('Mattch.count') do
      post mattches_url, params: { mattch: { mattch_date: @mattch.mattch_date } }
    end

    assert_redirected_to mattch_url(Mattch.last)
  end

  test "should show mattch" do
    get mattch_url(@mattch)
    assert_response :success
  end

  test "should get edit" do
    get edit_mattch_url(@mattch)
    assert_response :success
  end

  test "should update mattch" do
    patch mattch_url(@mattch), params: { mattch: { mattch_date: @mattch.mattch_date } }
    assert_redirected_to mattch_url(@mattch)
  end

  test "should destroy mattch" do
    assert_difference('Mattch.count', -1) do
      delete mattch_url(@mattch)
    end

    assert_redirected_to mattches_url
  end
end
