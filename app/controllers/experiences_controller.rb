class ExperiencesController < ApplicationController
	def new
		@experience = Experience.new
	end

	def create
		@experience = Experience.new(experience_params)
		if @experience.save
	    redirect_to root_path, flash: {notice: "Submitted successfully"}
		else
			render 'new'
		end
	end

	private
		def experience_params
			params.require(:experience).permit(:name,:email,:gender,:contact,:experience,
				:highest_qualification,:branch,:apply_for,:current_company,:current_location,
				:resume,:note,:status,:interview_type,:current_ctc,:expected_ctc,:expected_negotiable,
				:notice_period,:notice_period_negotiable,:interviewer,:schedule_at,:admin_note)
		end
end
