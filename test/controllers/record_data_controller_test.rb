require 'test_helper'

class RecordDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @record_datum = record_data(:one)
  end

  test "should get index" do
    get record_data_url
    assert_response :success
  end

  test "should get new" do
    get new_record_datum_url
    assert_response :success
  end

  test "should create record_datum" do
    assert_difference('RecordDatum.count') do
      post record_data_url, params: { record_datum: { date: @record_datum.date, post: @record_datum.post, totalViews: @record_datum.totalViews, upvotes: @record_datum.upvotes, user: @record_datum.user } }
    end

    assert_redirected_to record_datum_url(RecordDatum.last)
  end

  test "should show record_datum" do
    get record_datum_url(@record_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_record_datum_url(@record_datum)
    assert_response :success
  end

  test "should update record_datum" do
    patch record_datum_url(@record_datum), params: { record_datum: { date: @record_datum.date, post: @record_datum.post, totalViews: @record_datum.totalViews, upvotes: @record_datum.upvotes, user: @record_datum.user } }
    assert_redirected_to record_datum_url(@record_datum)
  end

  test "should destroy record_datum" do
    assert_difference('RecordDatum.count', -1) do
      delete record_datum_url(@record_datum)
    end

    assert_redirected_to record_data_url
  end
end
