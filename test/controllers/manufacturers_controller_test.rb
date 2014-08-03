require 'test_helper'

class ManufacturersControllerTest < ActionController::TestCase
  setup do
    @manufacturer = manufacturers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:manufacturers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create manufacturer" do
    assert_difference('Manufacturer.count') do
      post :create, manufacturer: { bottle_1liter: @manufacturer.bottle_1liter, bottle_20liters: @manufacturer.bottle_20liters, bottle_2liters: @manufacturer.bottle_2liters, bottle_500ml: @manufacturer.bottle_500ml, brand_name: @manufacturer.brand_name, city: @manufacturer.city, cml_no: @manufacturer.cml_no, description: @manufacturer.description, dist: @manufacturer.dist, email: @manufacturer.email, manufacturer_name: @manufacturer.manufacturer_name, mobile: @manufacturer.mobile, operative_status: @manufacturer.operative_status, pin: @manufacturer.pin, post_office: @manufacturer.post_office, state: @manufacturer.state, street1: @manufacturer.street1, street2: @manufacturer.street2, valid_date: @manufacturer.valid_date }
    end

    assert_redirected_to manufacturer_path(assigns(:manufacturer))
  end

  test "should show manufacturer" do
    get :show, id: @manufacturer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @manufacturer
    assert_response :success
  end

  test "should update manufacturer" do
    patch :update, id: @manufacturer, manufacturer: { bottle_1liter: @manufacturer.bottle_1liter, bottle_20liters: @manufacturer.bottle_20liters, bottle_2liters: @manufacturer.bottle_2liters, bottle_500ml: @manufacturer.bottle_500ml, brand_name: @manufacturer.brand_name, city: @manufacturer.city, cml_no: @manufacturer.cml_no, description: @manufacturer.description, dist: @manufacturer.dist, email: @manufacturer.email, manufacturer_name: @manufacturer.manufacturer_name, mobile: @manufacturer.mobile, operative_status: @manufacturer.operative_status, pin: @manufacturer.pin, post_office: @manufacturer.post_office, state: @manufacturer.state, street1: @manufacturer.street1, street2: @manufacturer.street2, valid_date: @manufacturer.valid_date }
    assert_redirected_to manufacturer_path(assigns(:manufacturer))
  end

  test "should destroy manufacturer" do
    assert_difference('Manufacturer.count', -1) do
      delete :destroy, id: @manufacturer
    end

    assert_redirected_to manufacturers_path
  end
end
