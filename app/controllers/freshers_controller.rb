class FreshersController < ApplicationController
	def new
		@fresher = Fresher.new
	end

	def create
		@fresher = Fresher.new(fresher_params)
		if @fresher.save
			ProfileMailer.profile_email(@fresher).deliver_now
	    redirect_to root_path, flash: {notice: "Submitted successfully"}
		else
			render 'new'
		end
	end

	private
		def fresher_params
			params.require(:fresher).permit(:name,:email,:gender,:contact,:highest_qualification,:branch,:college,:passout_year,:current_location,:resume,
				:note)
		end
end
