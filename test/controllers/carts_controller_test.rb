require 'test_helper'

class CartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cart = carts(:one)
  end

  test "should get index" do
    get carts_url
    assert_response :success
  end

  test "should get new" do
    get new_cart_url
    assert_response :success
  end

 

  test "should show cart" do
    get cart_url(@cart, locale: I18n.locale)
    assert_response :success
  end

  test "should get edit" do
    get edit_cart_url(@cart, locale: I18n.locale)
    assert_response :success
  end

  test "should update cart" do
    patch cart_url(@cart, locale: I18n.locale), params: { cart: {  } }
    assert_redirected_to cart_url(@cart)
  end

  test "should destroy cart" do
    post line_items_url, params: { product_id: products(:one).id }
    @cart = Cart.find(session[:cart_id])
    assert_difference('Cart.count', -1) do
      delete cart_url(@cart,locale: I18n.locale)
    end
    assert_redirected_to root_url
  end
end
