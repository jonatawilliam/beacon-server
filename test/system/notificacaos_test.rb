require "application_system_test_case"

class NotificacaosTest < ApplicationSystemTestCase
  setup do
    @notificacao = notificacaos(:one)
  end

  test "visiting the index" do
    visit notificacaos_url
    assert_selector "h1", text: "Notificacaos"
  end

  test "creating a Notificacao" do
    visit notificacaos_url
    click_on "New Notificacao"

    fill_in "Beacon", with: @notificacao.beacon_id
    fill_in "Mensagem", with: @notificacao.mensagem
    fill_in "Titulo", with: @notificacao.titulo
    click_on "Create Notificacao"

    assert_text "Notificacao was successfully created"
    click_on "Back"
  end

  test "updating a Notificacao" do
    visit notificacaos_url
    click_on "Edit", match: :first

    fill_in "Beacon", with: @notificacao.beacon_id
    fill_in "Mensagem", with: @notificacao.mensagem
    fill_in "Titulo", with: @notificacao.titulo
    click_on "Update Notificacao"

    assert_text "Notificacao was successfully updated"
    click_on "Back"
  end

  test "destroying a Notificacao" do
    visit notificacaos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Notificacao was successfully destroyed"
  end
end
