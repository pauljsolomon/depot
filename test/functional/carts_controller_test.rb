require 'test_helper'

class CartsControllerTest < ActionController::TestCase
  setup do
    @cart = carts(:one)
  end

  test "carts_controller should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:carts)
  end

  test "carts_controller should get new" do
    get :new
    assert_response :success
  end

  test "carts_controller should create cart" do
    assert_difference('Cart.count') do
      post :create, cart: @cart.attributes
    end

    assert_redirected_to cart_path(assigns(:cart))
  end

  test "carts_controller should show cart" do
    get :show, id: @cart.to_param
    assert_response :success
  end

  test "carts_controller should get edit" do
    get :edit, id: @cart.to_param
    assert_response :success
  end

  test "carts_controller should update cart" do
    put :update, id: @cart.to_param, cart: @cart.attributes
    assert_redirected_to cart_path(assigns(:cart))
  end

  test "carts_controller should destroy cart" do
    assert_difference('Cart.count', -1) do
      session[:cart_id] = @cart.id
      #delete :destroy, id: @cart.to_param
      delete :destroy, id: @cart
    end

    assert_redirected_to store_path
  end
end
