require 'test_helper'

class PlanificacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @planificacion = planificacions(:one)
  end

  test "should get index" do
    get planificacions_url
    assert_response :success
  end

  test "should get new" do
    get new_planificacion_url
    assert_response :success
  end

  test "should create planificacion" do
    assert_difference('Planificacion.count') do
      post planificacions_url, params: { planificacion: { cantidad_clases: @planificacion.cantidad_clases, fecha_inicio: @planificacion.fecha_inicio, fecha_termino: @planificacion.fecha_termino } }
    end

    assert_redirected_to planificacion_url(Planificacion.last)
  end

  test "should show planificacion" do
    get planificacion_url(@planificacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_planificacion_url(@planificacion)
    assert_response :success
  end

  test "should update planificacion" do
    patch planificacion_url(@planificacion), params: { planificacion: { cantidad_clases: @planificacion.cantidad_clases, fecha_inicio: @planificacion.fecha_inicio, fecha_termino: @planificacion.fecha_termino } }
    assert_redirected_to planificacion_url(@planificacion)
  end

  test "should destroy planificacion" do
    assert_difference('Planificacion.count', -1) do
      delete planificacion_url(@planificacion)
    end

    assert_redirected_to planificacions_url
  end
end
