ActiveAdmin.register Fresher do
  form title: 'Interview Schedule Details' do |f|
    inputs 'Details' do
      input :status, :as => :select, collection: (['PENDING', 'ON HOLD', 'NOT RELEVANT', 'IN PROCESS', 'SCHEDULED', 'DISQUALIFIED', 'REJECTED','FIRST ROUND', 'SECOND ROUND','INTERVIEW ROUND','MACHINE TEST', 'HR ROUND', 'SELECTED', 'CONFIRMED', 'JOINED'])
      input :interview_type, :as => :select, collection: (['TELEPHONE INTERVIEW', 'FACE TO FACE INTERVIEW', 'SKYPE INTERVIEW'])
      input :interviewer, :as => :select, collection: (['Prateek Singh', 'Hemant Gupta', 'Anand Rajput', 'Sandeep Singh', 'Rohit Yadav', 'Nirmala Malviya', 'Gourav Lele', 'Manjari Mishra', 'Swati Mishra', 'Hitesh Kanwar' ])
      input :schedule_at
      input :admin_note
    end
    actions
  end
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
    permitted = [:status, :interview_type, :schedule_at, :interviewer, :admin_note]
    permitted << :other if params[:action] == 'create' && current_user.admin?
    permitted
  end
end
