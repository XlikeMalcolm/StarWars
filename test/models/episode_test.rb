require 'test_helper'

class EpisodeTest < ActiveSupport::TestCase
  def setup
  	@episode = Episode.new(title: "This is A Title", poster: "example_image.jpg", hero_image: "example_image.jpg", description: "This is a basic description of the movie")
  end

  test "should be valid" do
  	assert @episode.valid?
  end

  test "title should be present" do
  	@episode.title = "  "
  	assert_not @episode.valid?
  end

  test "poster should be present" do
  	@episode.poster = "  "
  	assert_not @episode.valid?
  end

  test "hero image should be present" do
  	@episode.hero_image = "  "
  	assert_not @episode.valid?
  end

end
