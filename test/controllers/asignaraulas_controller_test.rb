require 'test_helper'

class AsignaraulasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asignaraula = asignaraulas(:one)
  end

  test "should get index" do
    get asignaraulas_url
    assert_response :success
  end

  test "should get new" do
    get new_asignaraula_url
    assert_response :success
  end

  test "should create asignaraula" do
    assert_difference('Asignaraula.count') do
      post asignaraulas_url, params: { asignaraula: { aula_id: @asignaraula.aula_id, cursoporcarrera_id: @asignaraula.cursoporcarrera_id, dia_id: @asignaraula.dia_id } }
    end

    assert_redirected_to asignaraula_url(Asignaraula.last)
  end

  test "should show asignaraula" do
    get asignaraula_url(@asignaraula)
    assert_response :success
  end

  test "should get edit" do
    get edit_asignaraula_url(@asignaraula)
    assert_response :success
  end

  test "should update asignaraula" do
    patch asignaraula_url(@asignaraula), params: { asignaraula: { aula_id: @asignaraula.aula_id, cursoporcarrera_id: @asignaraula.cursoporcarrera_id, dia_id: @asignaraula.dia_id } }
    assert_redirected_to asignaraula_url(@asignaraula)
  end

  test "should destroy asignaraula" do
    assert_difference('Asignaraula.count', -1) do
      delete asignaraula_url(@asignaraula)
    end

    assert_redirected_to asignaraulas_url
  end
end
