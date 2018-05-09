class EpisodesController < ApplicationController
  def index
  	@episodes = Episode.all.includes(:characters)
  	fresh_when last_modified: @episodes.maximum(:created_at)
  end

  def show
  	@episode = Episode.find(params[:id])
  	fresh_when @episode
  end
end
