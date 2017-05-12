require 'test_helper'

class MainObjsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @main_obj = main_objs(:one)
  end

  test "should get index" do
    get main_objs_url
    assert_response :success
  end

  test "should get new" do
    get new_main_obj_url
    assert_response :success
  end

  test "should create main_obj" do
    assert_difference('MainObj.count') do
      post main_objs_url, params: { main_obj: { limit: @main_obj.limit, text: @main_obj.text, title: @main_obj.title, user_id: @main_obj.user_id } }
    end

    assert_redirected_to main_obj_url(MainObj.last)
  end

  test "should show main_obj" do
    get main_obj_url(@main_obj)
    assert_response :success
  end

  test "should get edit" do
    get edit_main_obj_url(@main_obj)
    assert_response :success
  end

  test "should update main_obj" do
    patch main_obj_url(@main_obj), params: { main_obj: { limit: @main_obj.limit, text: @main_obj.text, title: @main_obj.title, user_id: @main_obj.user_id } }
    assert_redirected_to main_obj_url(@main_obj)
  end

  test "should destroy main_obj" do
    assert_difference('MainObj.count', -1) do
      delete main_obj_url(@main_obj)
    end

    assert_redirected_to main_objs_url
  end
end
