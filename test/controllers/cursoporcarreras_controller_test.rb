require 'test_helper'

class CursoporcarrerasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cursoporcarrera = cursoporcarreras(:one)
  end

  test "should get index" do
    get cursoporcarreras_url
    assert_response :success
  end

  test "should get new" do
    get new_cursoporcarrera_url
    assert_response :success
  end

  test "should create cursoporcarrera" do
    assert_difference('Cursoporcarrera.count') do
      post cursoporcarreras_url, params: { cursoporcarrera: { cantidadalumno: @cursoporcarrera.cantidadalumno, carrera_id: @cursoporcarrera.carrera_id, curso_id: @cursoporcarrera.curso_id, facultad_id: @cursoporcarrera.facultad_id, semestre: @cursoporcarrera.semestre } }
    end

    assert_redirected_to cursoporcarrera_url(Cursoporcarrera.last)
  end

  test "should show cursoporcarrera" do
    get cursoporcarrera_url(@cursoporcarrera)
    assert_response :success
  end

  test "should get edit" do
    get edit_cursoporcarrera_url(@cursoporcarrera)
    assert_response :success
  end

  test "should update cursoporcarrera" do
    patch cursoporcarrera_url(@cursoporcarrera), params: { cursoporcarrera: { cantidadalumno: @cursoporcarrera.cantidadalumno, carrera_id: @cursoporcarrera.carrera_id, curso_id: @cursoporcarrera.curso_id, facultad_id: @cursoporcarrera.facultad_id, semestre: @cursoporcarrera.semestre } }
    assert_redirected_to cursoporcarrera_url(@cursoporcarrera)
  end

  test "should destroy cursoporcarrera" do
    assert_difference('Cursoporcarrera.count', -1) do
      delete cursoporcarrera_url(@cursoporcarrera)
    end

    assert_redirected_to cursoporcarreras_url
  end
end
