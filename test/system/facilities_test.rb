require "application_system_test_case"

class FacilitiesTest < ApplicationSystemTestCase
  setup do
    @facility = facilities(:one)
  end

  test "visiting the index" do
    visit facilities_url
    assert_selector "h1", text: "Facilities"
  end

  test "creating a Facility" do
    visit facilities_url
    click_on "New Facility"

    fill_in "Address", with: @facility.address
    fill_in "City", with: @facility.city
    fill_in "Country", with: @facility.country
    fill_in "Name", with: @facility.name
    fill_in "Secondary address", with: @facility.secondary_address
    fill_in "Zip", with: @facility.zip
    click_on "Create Facility"

    assert_text "Facility was successfully created"
    click_on "Back"
  end

  test "updating a Facility" do
    visit facilities_url
    click_on "Edit", match: :first

    fill_in "Address", with: @facility.address
    fill_in "City", with: @facility.city
    fill_in "Country", with: @facility.country
    fill_in "Name", with: @facility.name
    fill_in "Secondary address", with: @facility.secondary_address
    fill_in "Zip", with: @facility.zip
    click_on "Update Facility"

    assert_text "Facility was successfully updated"
    click_on "Back"
  end

  test "destroying a Facility" do
    visit facilities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Facility was successfully destroyed"
  end
end
