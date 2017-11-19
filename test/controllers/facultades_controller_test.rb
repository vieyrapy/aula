require 'test_helper'

class FacultadesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @facultad = facultades(:one)
  end

  test "should get index" do
    get facultades_url
    assert_response :success
  end

  test "should get new" do
    get new_facultad_url
    assert_response :success
  end

  test "should create facultad" do
    assert_difference('Facultad.count') do
      post facultades_url, params: { facultad: { nombre: @facultad.nombre } }
    end

    assert_redirected_to facultad_url(Facultad.last)
  end

  test "should show facultad" do
    get facultad_url(@facultad)
    assert_response :success
  end

  test "should get edit" do
    get edit_facultad_url(@facultad)
    assert_response :success
  end

  test "should update facultad" do
    patch facultad_url(@facultad), params: { facultad: { nombre: @facultad.nombre } }
    assert_redirected_to facultad_url(@facultad)
  end

  test "should destroy facultad" do
    assert_difference('Facultad.count', -1) do
      delete facultad_url(@facultad)
    end

    assert_redirected_to facultades_url
  end
end
