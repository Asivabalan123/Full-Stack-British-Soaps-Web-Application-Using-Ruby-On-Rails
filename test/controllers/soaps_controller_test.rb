require 'test_helper'

class SoapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @soap = soaps(:one)
  end

  test "should get index" do
    get soaps_url
    assert_response :success
  end

  test "should get new" do
    get new_soap_url
    assert_response :success
  end

  test "should create soap" do
    assert_difference('Soap.count') do
      post soaps_url, params: { soap: {  } }
    end

    assert_redirected_to soap_url(Soap.last)
  end

  test "should show soap" do
    get soap_url(@soap)
    assert_response :success
  end

  test "should get edit" do
    get edit_soap_url(@soap)
    assert_response :success
  end

  test "should update soap" do
    patch soap_url(@soap), params: { soap: {  } }
    assert_redirected_to soap_url(@soap)
  end

  test "should destroy soap" do
    assert_difference('Soap.count', -1) do
      delete soap_url(@soap)
    end

    assert_redirected_to soaps_url
  end
end
