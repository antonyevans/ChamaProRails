require 'test_helper'

class ManagersCashesControllerTest < ActionController::TestCase
  setup do
    @managers_cash = managers_cashes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:managers_cashes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create managers_cash" do
    assert_difference('ManagersCash.count') do
      post :create, :managers_cash => @managers_cash.attributes
    end

    assert_redirected_to managers_cash_path(assigns(:managers_cash))
  end

  test "should show managers_cash" do
    get :show, :id => @managers_cash.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @managers_cash.to_param
    assert_response :success
  end

  test "should update managers_cash" do
    put :update, :id => @managers_cash.to_param, :managers_cash => @managers_cash.attributes
    assert_redirected_to managers_cash_path(assigns(:managers_cash))
  end

  test "should destroy managers_cash" do
    assert_difference('ManagersCash.count', -1) do
      delete :destroy, :id => @managers_cash.to_param
    end

    assert_redirected_to managers_cashes_path
  end
end
