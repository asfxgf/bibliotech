require "application_system_test_case"

class AppartenancesTest < ApplicationSystemTestCase
  setup do
    @appartenance = appartenances(:one)
  end

  test "visiting the index" do
    visit appartenances_url
    assert_selector "h1", text: "Appartenances"
  end

  test "creating a Appartenance" do
    visit appartenances_url
    click_on "New Appartenance"

    click_on "Create Appartenance"

    assert_text "Appartenance was successfully created"
    click_on "Back"
  end

  test "updating a Appartenance" do
    visit appartenances_url
    click_on "Edit", match: :first

    click_on "Update Appartenance"

    assert_text "Appartenance was successfully updated"
    click_on "Back"
  end

  test "destroying a Appartenance" do
    visit appartenances_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Appartenance was successfully destroyed"
  end
end
