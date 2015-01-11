class CountryCulturesController < ApplicationController
   def index
   	@country_cultures = CountryCulture.all
   end

  def new
  end
end
