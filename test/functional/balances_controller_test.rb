require 'test_helper'

class BalancesControllerTest < ActionController::TestCase
  setup do
    @balance = balances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:balances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create balance" do
    assert_difference('Balance.count') do
      post :create, :balance => @balance.attributes
    end

    assert_redirected_to balance_path(assigns(:balance))
  end

  test "should show balance" do
    get :show, :id => @balance.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @balance.to_param
    assert_response :success
  end

  test "should update balance" do
    put :update, :id => @balance.to_param, :balance => @balance.attributes
    assert_redirected_to balance_path(assigns(:balance))
  end

  test "should destroy balance" do
    assert_difference('Balance.count', -1) do
      delete :destroy, :id => @balance.to_param
    end

    assert_redirected_to balances_path
  end
end
