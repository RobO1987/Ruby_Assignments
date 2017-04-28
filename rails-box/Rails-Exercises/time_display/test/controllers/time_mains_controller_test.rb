require 'test_helper'

class TimeMainsControllerTest < ActionController::TestCase
  setup do
    @time_main = time_mains(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:time_mains)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create time_main" do
    assert_difference('TimeMain.count') do
      post :create, time_main: {  }
    end

    assert_redirected_to time_main_path(assigns(:time_main))
  end

  test "should show time_main" do
    get :show, id: @time_main
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @time_main
    assert_response :success
  end

  test "should update time_main" do
    patch :update, id: @time_main, time_main: {  }
    assert_redirected_to time_main_path(assigns(:time_main))
  end

  test "should destroy time_main" do
    assert_difference('TimeMain.count', -1) do
      delete :destroy, id: @time_main
    end

    assert_redirected_to time_mains_path
  end
end
