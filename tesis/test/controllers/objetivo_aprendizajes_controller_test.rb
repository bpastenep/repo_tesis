require 'test_helper'

class ObjetivoAprendizajesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @objetivo_aprendizaje = objetivo_aprendizajes(:one)
  end

  test "should get index" do
    get objetivo_aprendizajes_url
    assert_response :success
  end

  test "should get new" do
    get new_objetivo_aprendizaje_url
    assert_response :success
  end

  test "should create objetivo_aprendizaje" do
    assert_difference('ObjetivoAprendizaje.count') do
      post objetivo_aprendizajes_url, params: { objetivo_aprendizaje: { descripcion_oa: @objetivo_aprendizaje.descripcion_oa, objetivo_aprendizaje_id: @objetivo_aprendizaje.objetivo_aprendizaje_id, topico: @objetivo_aprendizaje.topico } }
    end

    assert_redirected_to objetivo_aprendizaje_url(ObjetivoAprendizaje.last)
  end

  test "should show objetivo_aprendizaje" do
    get objetivo_aprendizaje_url(@objetivo_aprendizaje)
    assert_response :success
  end

  test "should get edit" do
    get edit_objetivo_aprendizaje_url(@objetivo_aprendizaje)
    assert_response :success
  end

  test "should update objetivo_aprendizaje" do
    patch objetivo_aprendizaje_url(@objetivo_aprendizaje), params: { objetivo_aprendizaje: { descripcion_oa: @objetivo_aprendizaje.descripcion_oa, objetivo_aprendizaje_id: @objetivo_aprendizaje.objetivo_aprendizaje_id, topico: @objetivo_aprendizaje.topico } }
    assert_redirected_to objetivo_aprendizaje_url(@objetivo_aprendizaje)
  end

  test "should destroy objetivo_aprendizaje" do
    assert_difference('ObjetivoAprendizaje.count', -1) do
      delete objetivo_aprendizaje_url(@objetivo_aprendizaje)
    end

    assert_redirected_to objetivo_aprendizajes_url
  end
end
