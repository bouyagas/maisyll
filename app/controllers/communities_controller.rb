class CommunitiesController < ApplicationController
  def index
	
  end

  def new
  	@name = "I'm mandingo cummunity and Guinea is where my culture is from" 
  end

  private
  def community_params
  	params.require(:community).permit(:name, :place, :people, :social_organisation)
  end
end
