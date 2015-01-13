class CountryCulturesController < ApplicationController
   def index
   	@country_cultures = CountryCulture.all
   end

  def new
  	#@country_culture = CountryCulture.new
  end
  
  private
  def country_culture_params
  	params.require(:country_culture).permit(:name, :symbol, :value, :ally)
  end
  
end
