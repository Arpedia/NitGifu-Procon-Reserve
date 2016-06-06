class IndexesController < ApplicationController
  def index
  	@reserves = Reserve.all
  end

  def show
  	@reserve = Reserve.find_by(:reserve_id1 => params[:reserveID1],:reserve_id2 => params[:reserveID2])
  	if @reserve[:sex] == TRUE then
  		@reserve_info_sex = "男性"
  	else
  		@reserve_info_sex = "女性"
  	end
  end
end
