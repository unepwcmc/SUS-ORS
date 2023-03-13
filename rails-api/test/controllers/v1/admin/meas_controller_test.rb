require "test_helper"

class V1::Admin::MeasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @v1_admin_mea = v1_admin_meas(:one)
  end

  test "should get index" do
    get v1_admin_meas_url, as: :json
    assert_response :success
  end

  test "should create v1_admin_mea" do
    assert_difference("V1::Admin::Mea.count") do
      post v1_admin_meas_url, params: { v1_admin_mea: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show v1_admin_mea" do
    get v1_admin_mea_url(@v1_admin_mea), as: :json
    assert_response :success
  end

  test "should update v1_admin_mea" do
    patch v1_admin_mea_url(@v1_admin_mea), params: { v1_admin_mea: {  } }, as: :json
    assert_response :success
  end

  test "should destroy v1_admin_mea" do
    assert_difference("V1::Admin::Mea.count", -1) do
      delete v1_admin_mea_url(@v1_admin_mea), as: :json
    end

    assert_response :no_content
  end
end
