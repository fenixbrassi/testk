require "application_system_test_case"

class ShortestPathsTest < ApplicationSystemTestCase
  setup do
    @shortest_path = shortest_paths(:one)
  end

  test "visiting the index" do
    visit shortest_paths_url
    assert_selector "h1", text: "Shortest Paths"
  end

  test "creating a Shortest path" do
    visit shortest_paths_url
    click_on "New Shortest Path"

    fill_in "Description", with: @shortest_path.description
    fill_in "Name", with: @shortest_path.name
    fill_in "Shortestpath", with: @shortest_path.shortestpath
    click_on "Create Shortest path"

    assert_text "Shortest path was successfully created"
    click_on "Back"
  end

  test "updating a Shortest path" do
    visit shortest_paths_url
    click_on "Edit", match: :first

    fill_in "Description", with: @shortest_path.description
    fill_in "Name", with: @shortest_path.name
    fill_in "Shortestpath", with: @shortest_path.shortestpath
    click_on "Update Shortest path"

    assert_text "Shortest path was successfully updated"
    click_on "Back"
  end

  test "destroying a Shortest path" do
    visit shortest_paths_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shortest path was successfully destroyed"
  end
end
