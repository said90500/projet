require 'test_helper'

class AthletesControllerTest < ActionController::TestCase
  setup do
    @athlete = athletes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:athletes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create athlete" do
    assert_difference('Athlete.count') do
      post :create, athlete: { last_name,first_name,address_num,address_street,CP,phone,birthday: @athlete.last_name,first_name,address_num,address_street,CP,phone,birthday }
    end

    assert_redirected_to athlete_path(assigns(:athlete))
  end

  test "should show athlete" do
    get :show, id: @athlete
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @athlete
    assert_response :success
  end

  test "should update athlete" do
    patch :update, id: @athlete, athlete: { last_name,first_name,address_num,address_street,CP,phone,birthday: @athlete.last_name,first_name,address_num,address_street,CP,phone,birthday }
    assert_redirected_to athlete_path(assigns(:athlete))
  end

  test "should destroy athlete" do
    assert_difference('Athlete.count', -1) do
      delete :destroy, id: @athlete
    end

    assert_redirected_to athletes_path
  end
end
