require "application_system_test_case"

class NonisTest < ApplicationSystemTestCase
  setup do
    @noni = nonis(:one)
  end

  test "visiting the index" do
    visit nonis_url
    assert_selector "h1", text: "Nonis"
  end

  test "creating a Noni" do
    visit nonis_url
    click_on "New Noni"

    click_on "Create Noni"

    assert_text "Noni was successfully created"
    click_on "Back"
  end

  test "updating a Noni" do
    visit nonis_url
    click_on "Edit", match: :first

    click_on "Update Noni"

    assert_text "Noni was successfully updated"
    click_on "Back"
  end

  test "destroying a Noni" do
    visit nonis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Noni was successfully destroyed"
  end
end
