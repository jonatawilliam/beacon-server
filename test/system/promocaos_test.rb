require "application_system_test_case"

class PromocaosTest < ApplicationSystemTestCase
  setup do
    @promocao = promocaos(:one)
  end

  test "visiting the index" do
    visit promocaos_url
    assert_selector "h1", text: "Promocaos"
  end

  test "creating a Promocao" do
    visit promocaos_url
    click_on "New Promocao"

    fill_in "Beacon", with: @promocao.beacon_id
    fill_in "Imagem", with: @promocao.imagem
    fill_in "Mensagem", with: @promocao.mensagem
    fill_in "Titulo", with: @promocao.titulo
    click_on "Create Promocao"

    assert_text "Promocao was successfully created"
    click_on "Back"
  end

  test "updating a Promocao" do
    visit promocaos_url
    click_on "Edit", match: :first

    fill_in "Beacon", with: @promocao.beacon_id
    fill_in "Imagem", with: @promocao.imagem
    fill_in "Mensagem", with: @promocao.mensagem
    fill_in "Titulo", with: @promocao.titulo
    click_on "Update Promocao"

    assert_text "Promocao was successfully updated"
    click_on "Back"
  end

  test "destroying a Promocao" do
    visit promocaos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Promocao was successfully destroyed"
  end
end
