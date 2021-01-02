require 'test_helper'

class ShortestPathsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shortest_path = shortest_paths(:one)
  end

  test "should get index" do
    get shortest_paths_url
    assert_response :success
  end

  test "should get new" do
    get new_shortest_path_url
    assert_response :success
  end

  test "should create shortest_path" do
    assert_difference('ShortestPath.count') do
      post shortest_paths_url, params: { shortest_path: { description: @shortest_path.description, name: @shortest_path.name, shortestpath: @shortest_path.shortestpath } }
    end

    assert_redirected_to shortest_path_url(ShortestPath.last)
  end

  test "should show shortest_path" do
    get shortest_path_url(@shortest_path)
    assert_response :success
  end

  test "should get edit" do
    get edit_shortest_path_url(@shortest_path)
    assert_response :success
  end

  test "should update shortest_path" do
    patch shortest_path_url(@shortest_path), params: { shortest_path: { description: @shortest_path.description, name: @shortest_path.name, shortestpath: @shortest_path.shortestpath } }
    assert_redirected_to shortest_path_url(@shortest_path)
  end

  test "should destroy shortest_path" do
    assert_difference('ShortestPath.count', -1) do
      delete shortest_path_url(@shortest_path)
    end

    assert_redirected_to shortest_paths_url
  end
end
