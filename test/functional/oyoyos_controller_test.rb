require 'test_helper'

class OyoyosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:oyoyos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create oyoyo" do
    assert_difference('Oyoyo.count') do
      post :create, :oyoyo => { }
    end

    assert_redirected_to oyoyo_path(assigns(:oyoyo))
  end

  test "should show oyoyo" do
    get :show, :id => oyoyos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => oyoyos(:one).to_param
    assert_response :success
  end

  test "should update oyoyo" do
    put :update, :id => oyoyos(:one).to_param, :oyoyo => { }
    assert_redirected_to oyoyo_path(assigns(:oyoyo))
  end

  test "should destroy oyoyo" do
    assert_difference('Oyoyo.count', -1) do
      delete :destroy, :id => oyoyos(:one).to_param
    end

    assert_redirected_to oyoyos_path
  end
end
