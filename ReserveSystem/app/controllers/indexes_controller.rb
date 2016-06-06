class IndexesController < ApplicationController
  def index
  	@reserves = Reserve.all
  end

  def show
  	@reserve = Reserve.find_by(:reserve_id => params[:reserveID])
  	if @reserve[:sex] == TRUE then
  		@reserve_info_sex = "MALE"
  	else
  		@reserve_info_sex = "FEMALE"
  	end
  end
end
