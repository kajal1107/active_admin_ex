class ExperiencesController < ApplicationController
	def new
		@experience = Experience.new
	end

	def create
		@experience = Experience.new(experience_params)
		if @experience.save
			ProfileMailer.profile_email(@experience).deliver_now
	    redirect_to root_path, flash: {notice: "Submitted successfully"}
		else
			render 'new'
		end
	end

	private
		def experience_params
			params.require(:experience).permit(:name,:email,:gender,:contact,:experience,
				:highest_qualification,:branch,:apply_for,:current_company,:current_location,
				:resume,:note,:current_ctc,:expected_ctc,:expected_negotiable,
				:notice_period,:notice_period_negotiable)
		end
end
