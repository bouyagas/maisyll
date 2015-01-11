class BondCulturesController < ApplicationController
   def index
   	@bond_cultures = BondCulture.all
   end

  def new
    @name = "I'm mandingo cummunity and Guinea is where my culture is from"
  end
end
