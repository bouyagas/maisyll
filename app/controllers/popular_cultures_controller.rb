class PopularCulturesController < ApplicationController

  def index
  	@popular_cultures = PopularCulture.all
  end

  def new
  end
end
