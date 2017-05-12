require 'test_helper'

class SubObjsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sub_obj = sub_objs(:one)
  end

  test "should get index" do
    get sub_objs_url
    assert_response :success
  end

  test "should get new" do
    get new_sub_obj_url
    assert_response :success
  end

  test "should create sub_obj" do
    assert_difference('SubObj.count') do
      post sub_objs_url, params: { sub_obj: { limit: @sub_obj.limit, main_obj_id: @sub_obj.main_obj_id, text: @sub_obj.text, title: @sub_obj.title } }
    end

    assert_redirected_to sub_obj_url(SubObj.last)
  end

  test "should show sub_obj" do
    get sub_obj_url(@sub_obj)
    assert_response :success
  end

  test "should get edit" do
    get edit_sub_obj_url(@sub_obj)
    assert_response :success
  end

  test "should update sub_obj" do
    patch sub_obj_url(@sub_obj), params: { sub_obj: { limit: @sub_obj.limit, main_obj_id: @sub_obj.main_obj_id, text: @sub_obj.text, title: @sub_obj.title } }
    assert_redirected_to sub_obj_url(@sub_obj)
  end

  test "should destroy sub_obj" do
    assert_difference('SubObj.count', -1) do
      delete sub_obj_url(@sub_obj)
    end

    assert_redirected_to sub_objs_url
  end
end
