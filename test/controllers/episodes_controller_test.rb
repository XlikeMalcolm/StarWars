require 'test_helper'

class EpisodesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
  	@base_title = "Star Wars Movies App"
  	@episode = episodes(:musi)
  end
  
  test "should get root" do
  	get root_url
  	assert_response :success
  end

  test "should get index" do
    get episodes_index_url
    assert_response :success
  	assert_select "title", "#{base_title}"
  end

  test "should get show" do
    get episode_path
    assert_response :success
  	assert_select "title", "#{@episode.title} | #{base_title}"
  end

end
