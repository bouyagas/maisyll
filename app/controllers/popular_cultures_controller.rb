class PopularCulturesController < ApplicationController

  def index
  	@popular_cultures = PopularCulture.all
  end

  def new
  	#@popular_culture = PopularCulture.new
  end

  private 
  def popular_culture_params
  	params.require(:popular_culture).permit(:sport, :movie, :television, :fashion, :music,
     :entertainment, :religion)
  end

end
