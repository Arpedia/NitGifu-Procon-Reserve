require 'time'
class IndexesController < ApplicationController
	#@@nowdate = 0
  def index
		Reserve.reorder(":date")
  	@reserves = Reserve.all
  	@total = Reserve.count
  end
	
	def reload
		time = Time.now
		@@nowdate = time.year*1000000+time.month*10000+time.day*100+time.hour*1
		@deletedNum = 0
		
		@deleteRecord = Reserve.new
		@deleteRecord = Reserve.where("date < ?",@@nowdate)
		@deletedNum = @deleteRecord.count
	end
	
	def delete
		confirm = Confirm.new
		confirm.confirm = params[:confirm][:confirm]
		if confirm.confirm == true then
			deleteRecord = Reserve.new
			deleteRecord = Reserve.where("date < ?",@@nowdate)
			deleteRecord.destroy_all
		else
			redirect_to '/indexes/index'
		end
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
