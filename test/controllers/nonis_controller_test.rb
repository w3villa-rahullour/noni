require "test_helper"

class NonisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @noni = nonis(:one)
  end

  test "should get index" do
    get nonis_url
    assert_response :success
  end

  test "should get new" do
    get new_noni_url
    assert_response :success
  end

  test "should create noni" do
    assert_difference('Noni.count') do
      post nonis_url, params: { noni: {  } }
    end

    assert_redirected_to noni_url(Noni.last)
  end

  test "should show noni" do
    get noni_url(@noni)
    assert_response :success
  end

  test "should get edit" do
    get edit_noni_url(@noni)
    assert_response :success
  end

  test "should update noni" do
    patch noni_url(@noni), params: { noni: {  } }
    assert_redirected_to noni_url(@noni)
  end

  test "should destroy noni" do
    assert_difference('Noni.count', -1) do
      delete noni_url(@noni)
    end

    assert_redirected_to nonis_url
  end
end
