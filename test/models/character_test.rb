require 'test_helper'

class CharacterTest < ActiveSupport::TestCase

  def setup
  	@episode = episodes(:musi)
  	@character = Character.new(name: "Letlhogonolo Musi", episode_id: @episode.id)
  end

  test "should be valid" do
  	assert @character.valid?
  end

  test "name should be present" do
  	@character.name = "  "
  	assert_not @character.valid?
  end

  test "episode id should be present" do
  	@character.episode_id = nil
  	assert_not @character.valid?
  end

end
