require 'test_helper'

class DiadelasemanasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @diadelasemana = diadelasemanas(:one)
  end

  test "should get index" do
    get diadelasemanas_url
    assert_response :success
  end

  test "should get new" do
    get new_diadelasemana_url
    assert_response :success
  end

  test "should create diadelasemana" do
    assert_difference('Diadelasemana.count') do
      post diadelasemanas_url, params: { diadelasemana: { nombre: @diadelasemana.nombre } }
    end

    assert_redirected_to diadelasemana_url(Diadelasemana.last)
  end

  test "should show diadelasemana" do
    get diadelasemana_url(@diadelasemana)
    assert_response :success
  end

  test "should get edit" do
    get edit_diadelasemana_url(@diadelasemana)
    assert_response :success
  end

  test "should update diadelasemana" do
    patch diadelasemana_url(@diadelasemana), params: { diadelasemana: { nombre: @diadelasemana.nombre } }
    assert_redirected_to diadelasemana_url(@diadelasemana)
  end

  test "should destroy diadelasemana" do
    assert_difference('Diadelasemana.count', -1) do
      delete diadelasemana_url(@diadelasemana)
    end

    assert_redirected_to diadelasemanas_url
  end
end
