class BondCulturesController < ApplicationController
   def index
   	@bond_cultures = BondCulture.all
   end

  def show
    #@bond_culture = BondCulture.find(params[:id])
  end

  def new
    @bond_culture = BondCulture.new
  end
  def create
    @bond_culture = BondCulture.new(bond_culture_params)
    if @bondCulture.save
      redirect_to :action => 'index'
    else
      render 'new'
    end
  end

  private
  def bond_culture_params
  	params.require(:bond_culture).permit(:value , :norm , :custom , :tradition , :belief , :language)
  end
end
