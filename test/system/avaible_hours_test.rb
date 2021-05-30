require "application_system_test_case"

class AvaibleHoursTest < ApplicationSystemTestCase
  setup do
    @avaible_hour = avaible_hours(:one)
  end

  test "visiting the index" do
    visit avaible_hours_url
    assert_selector "h1", text: "Avaible Hours"
  end

  test "creating a Avaible hour" do
    visit avaible_hours_url
    click_on "New Avaible Hour"

    fill_in "Date", with: @avaible_hour.date
    fill_in "Time", with: @avaible_hour.time
    fill_in "User", with: @avaible_hour.user_id
    click_on "Create Avaible hour"

    assert_text "Avaible hour was successfully created"
    click_on "Back"
  end

  test "updating a Avaible hour" do
    visit avaible_hours_url
    click_on "Edit", match: :first

    fill_in "Date", with: @avaible_hour.date
    fill_in "Time", with: @avaible_hour.time
    fill_in "User", with: @avaible_hour.user_id
    click_on "Update Avaible hour"

    assert_text "Avaible hour was successfully updated"
    click_on "Back"
  end

  test "destroying a Avaible hour" do
    visit avaible_hours_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Avaible hour was successfully destroyed"
  end
end
