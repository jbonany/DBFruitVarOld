require 'test_helper'

class VarietiesControllerTest < ActionController::TestCase
  setup do
    @variety = varieties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:varieties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create variety" do
    assert_difference('Variety.count') do
      post :create, variety: { breeder_idmale_parent: @variety.breeder_idmale_parent, clon: @variety.clon, clone: @variety.clone, country_id: @variety.country_id, cultivar: @variety.cultivar, female_parent: @variety.female_parent, group_id: @variety.group_id, name: @variety.name, observations_cat: @variety.observations_cat, observations_eng: @variety.observations_eng, observations_esp: @variety.observations_esp, synonim: @variety.synonim, year: @variety.year }
    end

    assert_redirected_to variety_path(assigns(:variety))
  end

  test "should show variety" do
    get :show, id: @variety
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @variety
    assert_response :success
  end

  test "should update variety" do
    put :update, id: @variety, variety: { breeder_idmale_parent: @variety.breeder_idmale_parent, clon: @variety.clon, clone: @variety.clone, country_id: @variety.country_id, cultivar: @variety.cultivar, female_parent: @variety.female_parent, group_id: @variety.group_id, name: @variety.name, observations_cat: @variety.observations_cat, observations_eng: @variety.observations_eng, observations_esp: @variety.observations_esp, synonim: @variety.synonim, year: @variety.year }
    assert_redirected_to variety_path(assigns(:variety))
  end

  test "should destroy variety" do
    assert_difference('Variety.count', -1) do
      delete :destroy, id: @variety
    end

    assert_redirected_to varieties_path
  end
end
