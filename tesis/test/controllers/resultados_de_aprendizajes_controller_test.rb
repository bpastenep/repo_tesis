require 'test_helper'

class ResultadosDeAprendizajesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resultados_de_aprendizaje = resultados_de_aprendizajes(:one)
  end

  test "should get index" do
    get resultados_de_aprendizajes_url
    assert_response :success
  end

  test "should get new" do
    get new_resultados_de_aprendizaje_url
    assert_response :success
  end

  test "should create resultados_de_aprendizaje" do
    assert_difference('ResultadosDeAprendizaje.count') do
      post resultados_de_aprendizajes_url, params: { resultados_de_aprendizaje: { descripcion_resultado: @resultados_de_aprendizaje.descripcion_resultado } }
    end

    assert_redirected_to resultados_de_aprendizaje_url(ResultadosDeAprendizaje.last)
  end

  test "should show resultados_de_aprendizaje" do
    get resultados_de_aprendizaje_url(@resultados_de_aprendizaje)
    assert_response :success
  end

  test "should get edit" do
    get edit_resultados_de_aprendizaje_url(@resultados_de_aprendizaje)
    assert_response :success
  end

  test "should update resultados_de_aprendizaje" do
    patch resultados_de_aprendizaje_url(@resultados_de_aprendizaje), params: { resultados_de_aprendizaje: { descripcion_resultado: @resultados_de_aprendizaje.descripcion_resultado } }
    assert_redirected_to resultados_de_aprendizaje_url(@resultados_de_aprendizaje)
  end

  test "should destroy resultados_de_aprendizaje" do
    assert_difference('ResultadosDeAprendizaje.count', -1) do
      delete resultados_de_aprendizaje_url(@resultados_de_aprendizaje)
    end

    assert_redirected_to resultados_de_aprendizajes_url
  end
end
