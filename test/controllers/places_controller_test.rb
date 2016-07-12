require 'test_helper'

class PlacesControllerTest < ActionController::TestCase
  setup do
    @place = places(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:places)
  end

  test "should create place" do
    assert_difference('Place.count') do
      post :create, place: { descricao: @place.descricao, endereco: @place.endereco, image_url: @place.image_url, nome: @place.nome }
    end

    assert_response 201
  end

  test "should show place" do
    get :show, id: @place
    assert_response :success
  end

  test "should update place" do
    put :update, id: @place, place: { descricao: @place.descricao, endereco: @place.endereco, image_url: @place.image_url, nome: @place.nome }
    assert_response 204
  end

  test "should destroy place" do
    assert_difference('Place.count', -1) do
      delete :destroy, id: @place
    end

    assert_response 204
  end
end
