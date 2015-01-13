class HighCulturesController < ApplicationController
  def index
  	@high_cultures = HighCulture.all
  end

  def new
  	#@high_culture = HighCulture.new
  end

  private
  def high_culture_params
  	params.require(:high_culture).permit(:folk, :classic_music, :art, :history, :theater)
  end
end
