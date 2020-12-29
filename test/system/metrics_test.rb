require "application_system_test_case"

class MetricsTest < ApplicationSystemTestCase
  setup do
    @metric = metrics(:one)
  end

  test "visiting the index" do
    visit metrics_url
    assert_selector "h1", text: "Metrics"
  end

  test "creating a Metric" do
    visit metrics_url
    click_on "New Metric"

    fill_in "Availability", with: @metric.availability
    fill_in "Equipment", with: @metric.equipment_id
    fill_in "Good count", with: @metric.good_count
    fill_in "Ideal cycle time", with: @metric.ideal_cycle_time
    fill_in "Oee", with: @metric.oee
    fill_in "Performance", with: @metric.performance
    fill_in "Planned production time", with: @metric.planned_production_time
    fill_in "Quality", with: @metric.quality
    fill_in "Stop time", with: @metric.stop_time
    fill_in "Total count", with: @metric.total_count
    click_on "Create Metric"

    assert_text "Metric was successfully created"
    click_on "Back"
  end

  test "updating a Metric" do
    visit metrics_url
    click_on "Edit", match: :first

    fill_in "Availability", with: @metric.availability
    fill_in "Equipment", with: @metric.equipment_id
    fill_in "Good count", with: @metric.good_count
    fill_in "Ideal cycle time", with: @metric.ideal_cycle_time
    fill_in "Oee", with: @metric.oee
    fill_in "Performance", with: @metric.performance
    fill_in "Planned production time", with: @metric.planned_production_time
    fill_in "Quality", with: @metric.quality
    fill_in "Stop time", with: @metric.stop_time
    fill_in "Total count", with: @metric.total_count
    click_on "Update Metric"

    assert_text "Metric was successfully updated"
    click_on "Back"
  end

  test "destroying a Metric" do
    visit metrics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Metric was successfully destroyed"
  end
end