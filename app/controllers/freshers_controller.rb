class FreshersController < ApplicationController
	def new
		@fresher = Fresher.new
	end

	def create
		@fresher = Fresher.new(fresher_params)
		if @fresher.save
	    flash[:notice] = "Submitted successfully"
	    redirect_to action: 'new'
		else
			render 'new'
		end
	end

	private
		def fresher_params
			params.require(:fresher).permit(:name,:email,:gender,:contact,:highest_qualification,
				:branch,:college,:passout_year,:current_location,:resume,:note,:status,:interview_type,
				:schedule_at,:interviewer,:admin_note)
		end
end
