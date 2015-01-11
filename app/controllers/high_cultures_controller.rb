class HighCulturesController < ApplicationController
  def index
  	@high_cultures = HighCulture.all
  end

  def new
  end
end
