require "application_system_test_case"

class EscuelasTest < ApplicationSystemTestCase
  setup do
    @escuela = escuelas(:one)
  end

  test "visiting the index" do
    visit escuelas_url
    assert_selector "h1", text: "Escuelas"
  end

  test "should create escuela" do
    visit escuelas_url
    click_on "New escuela"

    fill_in "Cod e", with: @escuela.cod_e
    fill_in "Nom e", with: @escuela.nom_e
    click_on "Create Escuela"

    assert_text "Escuela was successfully created"
    click_on "Back"
  end

  test "should update Escuela" do
    visit escuela_url(@escuela)
    click_on "Edit this escuela", match: :first

    fill_in "Cod e", with: @escuela.cod_e
    fill_in "Nom e", with: @escuela.nom_e
    click_on "Update Escuela"

    assert_text "Escuela was successfully updated"
    click_on "Back"
  end

  test "should destroy Escuela" do
    visit escuela_url(@escuela)
    click_on "Destroy this escuela", match: :first

    assert_text "Escuela was successfully destroyed"
  end
end
