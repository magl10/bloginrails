require "application_system_test_case"

class AdministradorsTest < ApplicationSystemTestCase
  setup do
    @administrador = administradors(:one)
  end

  test "visiting the index" do
    visit administradors_url
    assert_selector "h1", text: "Administradors"
  end

  test "should create administrador" do
    visit administradors_url
    click_on "New administrador"

    fill_in "Email", with: @administrador.email
    fill_in "Password", with: @administrador.password
    fill_in "Password confirmation", with: @administrador.password_confirmation
    fill_in "Username", with: @administrador.username
    click_on "Create Administrador"

    assert_text "Administrador was successfully created"
    click_on "Back"
  end

  test "should update Administrador" do
    visit administrador_url(@administrador)
    click_on "Edit this administrador", match: :first

    fill_in "Email", with: @administrador.email
    fill_in "Password", with: @administrador.password
    fill_in "Password confirmation", with: @administrador.password_confirmation
    fill_in "Username", with: @administrador.username
    click_on "Update Administrador"

    assert_text "Administrador was successfully updated"
    click_on "Back"
  end

  test "should destroy Administrador" do
    visit administrador_url(@administrador)
    click_on "Destroy this administrador", match: :first

    assert_text "Administrador was successfully destroyed"
  end
end
