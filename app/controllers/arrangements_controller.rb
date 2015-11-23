class ArrangementsController < ApplicationController
	def index 
		@arrangements = Arrangement.all 
	end

	def show
    @arrangements = arrangement.find(params[:id])
  end

  private

  def arrangement_params
    params.require(:arrangement).permit(:name, :item_number, :price, :availability, :width, :height, :description, :visibility, :container_type)
  end
end
