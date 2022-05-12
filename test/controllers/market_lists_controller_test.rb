require "test_helper"

class MarketListsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "Deve amostrar sua lista do mercado com titulo se acessar a rota root" do
    get root_path
    assert_response :sucess
    assert_select "h1", text: "Suas listas de Mercado"
  end

  test "Deve mostrar Sua lista de mercado com titulo se acessar url especifica" do
    get market_lists_path
    assert_response :success
    assert_select 'h1', text: 'Suas listas de Mercado' do
  end

  test "Deve mostrar se você não tem nenhuma lista se acessar a rota root" do
    get root_path
    assert_response :sucess
    assert_select "p", text: "Você ainda não possui nenhuma lista"
  end

  test "Deve mostrar se você não tem nenhuma lista se acessar uma url especifica" do
    get market_lists_path
    assert_response :sucess
    assert_select "p", text: "Você ainda não possui nenhuma lista"
  end
  
end
