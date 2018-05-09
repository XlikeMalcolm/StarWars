module ApplicationHelper
	
  def full_title(title="")
  	base_title = "Star Wars Movies App"
  	if title.empty?
  	  base_title
  	else 
  	  title + " | " + base_title
  	end  	  	
  end

  def episodes
  	@episodes = Episode.all
  end

end
