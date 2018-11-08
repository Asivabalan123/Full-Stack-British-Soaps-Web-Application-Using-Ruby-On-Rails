require "application_system_test_case"

class SoapsTest < ApplicationSystemTestCase
  setup do
    @soap = soaps(:one)
  end

  test "visiting the index" do
    visit soaps_url
    assert_selector "h1", text: "Soaps"
  end

  test "creating a Soap" do
    visit soaps_url
    click_on "New Soap"

    click_on "Create Soap"

    assert_text "Soap was successfully created"
    click_on "Back"
  end

  test "updating a Soap" do
    visit soaps_url
    click_on "Edit", match: :first

    click_on "Update Soap"

    assert_text "Soap was successfully updated"
    click_on "Back"
  end

  test "destroying a Soap" do
    visit soaps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Soap was successfully destroyed"
  end
end
