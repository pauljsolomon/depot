require 'test_helper'

class LineItemsControllerTest < ActionController::TestCase
  setup do
    @line_item = line_items(:one)
  end

  test "line_items_controller should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:line_items)
  end

  test "line_items_controller should get new" do
    get :new
    assert_response :success
  end

  test "line_items_controller should create line_item" do
    assert_difference('LineItem.count') do
      #post :create, line_item: @line_item.attributes
      post :create, product_id: products(:ruby).id
    end

    #assert_redirected_to line_item_path(assigns(:line_item))
    #assert_redirected_to cart_path(assigns(:line_item).cart)
    assert_redirected_to store_path
  end

  test "line_items_controller should show line_item" do
    get :show, id: @line_item.to_param
    assert_response :success
  end

  test "line_items_controller should get edit" do
    get :edit, id: @line_item.to_param
    assert_response :success
  end

  test "line_items_controller should update line_item" do
    put :update, id: @line_item.to_param, line_item: @line_item.attributes
    assert_redirected_to line_item_path(assigns(:line_item))
  end

  test "line_items_controller should destroy line_item" do
    assert_difference('LineItem.count', -1) do
      delete :destroy, id: @line_item.to_param
    end

    assert_redirected_to line_items_path
  end
end
