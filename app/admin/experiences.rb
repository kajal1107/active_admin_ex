ActiveAdmin.register Experience do
     menu parent: "Profile"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :email, :gender, :contact, :experience, :highest_qualification, :branch, :apply_for, :current_company, :current_location, :resume, :note, :status, :interview_type, :interviewer, :admin_note, :current_ctc, :expected_ctc, :expected_negotiable, :notice_period, :notice_period_negotiable, :schedule_at
  #
  # or
  #
  permit_params do
    permitted = [:name, :email, :gender, :contact, :experience, :highest_qualification, :branch, :apply_for, :current_company, :current_location, :resume, :note, :status, :interview_type, :interviewer, :admin_note, :current_ctc, :expected_ctc, :expected_negotiable, :notice_period, :notice_period_negotiable, :schedule_at]
    permitted << :other if params[:action] == 'create' && current_user.admin?
    permitted
  end
  
end

