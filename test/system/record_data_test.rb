require "application_system_test_case"

class RecordDataTest < ApplicationSystemTestCase
  setup do
    @record_datum = record_data(:one)
  end

  test "visiting the index" do
    visit record_data_url
    assert_selector "h1", text: "Record Data"
  end

  test "creating a Record datum" do
    visit record_data_url
    click_on "New Record Datum"

    fill_in "Date", with: @record_datum.date
    fill_in "Post", with: @record_datum.post
    fill_in "Totalviews", with: @record_datum.totalViews
    fill_in "Upvotes", with: @record_datum.upvotes
    fill_in "User", with: @record_datum.user
    click_on "Create Record datum"

    assert_text "Record datum was successfully created"
    click_on "Back"
  end

  test "updating a Record datum" do
    visit record_data_url
    click_on "Edit", match: :first

    fill_in "Date", with: @record_datum.date
    fill_in "Post", with: @record_datum.post
    fill_in "Totalviews", with: @record_datum.totalViews
    fill_in "Upvotes", with: @record_datum.upvotes
    fill_in "User", with: @record_datum.user
    click_on "Update Record datum"

    assert_text "Record datum was successfully updated"
    click_on "Back"
  end

  test "destroying a Record datum" do
    visit record_data_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Record datum was successfully destroyed"
  end
end
