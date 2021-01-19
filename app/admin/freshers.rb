ActiveAdmin.register Fresher do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :email, :gender, :contact, :highest_qualification, :branch, :college, :passout_year, :current_location, :resume, :note, :status, :interview_type, :schedule_at, :interviewer, :admin_note
  #
  # or
  #
  permit_params do
    permitted = [:name, :email, :gender, :contact, :highest_qualification, :branch, :college, :passout_year, :current_location, :resume, :note, :status, :interview_type, :schedule_at, :interviewer, :admin_note]
    permitted << :other if params[:action] == 'create' && current_user.admin?
    permitted
  end
end
