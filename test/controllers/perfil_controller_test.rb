require "test_helper"

class PerfilControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get perfil_index_url
    assert_response :success
  end

  test "should get show" do
    get perfil_show_url
    assert_response :success
  end
end
