require 'time'
class ReservesController < ApplicationController

  def input
  	@@reserve = Reserve.new
  end

	def setup
		#i=18
		#while i < 100	do
		#	@age = Age.new
		#	@age.age_info = i
		#	@age.save
		#	i+=1
		#end
		@age = Age.all
	end
	
	def confirm
		time = Time.now
		@reserve = Reserve.new
		@reserve.reserve_id1 = time.min+(time.hour*100)+(time.day*10000)+(time.month*1000000)+((time.year-2000)*100000000)
		@reserve.reserve_id2 = (time.sec*1000)+(time.usec*1)
		@reserve.name = params[:reserve][:name]
		@reserve.age = params[:reserve][:age]
		@reserve.sex = params[:reserve][:sex]
		if @reserve.sex == true then
			@confirm_info_sex = "男性"
		else
			@confirm_info_sex = "女性"
		end
		@reserve.adress = params[:reserve][:adress]
		@reserve.phonenum = params[:reserve][:phonenum]
		@reserve.facility_id = params[:reserve][:facility_id]
		
		@reserve.date = (params[:reserve][:"date(1i)"].to_i)*1000000+(params[:reserve][:"date(2i)"].to_i)*10000+(params[:reserve][:"date(3i)"].to_i)*100+(params[:reserve][:"date(4i)"].to_i)*1
			@@reserve=@reserve
	end
	
	def create
		@confirm = Confirm.new
		@confirm.confirm = params[:confirm][:confirm]
		if @confirm.confirm == true then
			@create = Reserve.new
			@create = @@reserve
			flag = @create.save
			if flag == true then
			else
				redirect_to '/reserves/createfailed'
			end
		else
			redirect_to '/reserves/input'
		end
	end
	
  def facility
  end
end
