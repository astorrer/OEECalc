require 'test_helper'

class MetricsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @metric = metrics(:one)
  end

  test "should get index" do
    get metrics_url
    assert_response :success
  end

  test "should get new" do
    get new_metric_url
    assert_response :success
  end

  test "should create metric" do
    assert_difference('Metric.count') do
      post metrics_url, params: { metric: { availability: @metric.availability, equipment_id: @metric.equipment_id, good_count: @metric.good_count, ideal_cycle_time: @metric.ideal_cycle_time, oee: @metric.oee, performance: @metric.performance, planned_production_time: @metric.planned_production_time, quality: @metric.quality, stop_time: @metric.stop_time, total_count: @metric.total_count } }
    end

    assert_redirected_to metric_url(Metric.last)
  end

  test "should show metric" do
    get metric_url(@metric)
    assert_response :success
  end

  test "should get edit" do
    get edit_metric_url(@metric)
    assert_response :success
  end

  test "should update metric" do
    patch metric_url(@metric), params: { metric: { availability: @metric.availability, equipment_id: @metric.equipment_id, good_count: @metric.good_count, ideal_cycle_time: @metric.ideal_cycle_time, oee: @metric.oee, performance: @metric.performance, planned_production_time: @metric.planned_production_time, quality: @metric.quality, stop_time: @metric.stop_time, total_count: @metric.total_count } }
    assert_redirected_to metric_url(@metric)
  end

  test "should destroy metric" do
    assert_difference('Metric.count', -1) do
      delete metric_url(@metric)
    end

    assert_redirected_to metrics_url
  end
end
