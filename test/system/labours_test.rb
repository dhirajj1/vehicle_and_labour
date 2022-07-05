require "application_system_test_case"

class LaboursTest < ApplicationSystemTestCase
  setup do
    @labour = labours(:one)
  end

  test "visiting the index" do
    visit labours_url
    assert_selector "h1", text: "Labours"
  end

  test "should create labour" do
    visit labours_url
    click_on "New labour"

    fill_in "Address", with: @labour.address
    fill_in "Contact no", with: @labour.contact_no
    fill_in "First name", with: @labour.first_name
    fill_in "Labour", with: @labour.labour
    fill_in "Last name", with: @labour.last_name
    click_on "Create Labour"

    assert_text "Labour was successfully created"
    click_on "Back"
  end

  test "should update Labour" do
    visit labour_url(@labour)
    click_on "Edit this labour", match: :first

    fill_in "Address", with: @labour.address
    fill_in "Contact no", with: @labour.contact_no
    fill_in "First name", with: @labour.first_name
    fill_in "Labour", with: @labour.labour
    fill_in "Last name", with: @labour.last_name
    click_on "Update Labour"

    assert_text "Labour was successfully updated"
    click_on "Back"
  end

  test "should destroy Labour" do
    visit labour_url(@labour)
    click_on "Destroy this labour", match: :first

    assert_text "Labour was successfully destroyed"
  end
end
