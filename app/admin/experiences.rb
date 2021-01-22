ActiveAdmin.register Experience do
  form title: 'Interview Schedule Details' do |f|
    inputs 'Details' do
      input :name
      input :email
      input :gender
      input :contact
      input :experience
      input :highest_qualification
      input :branch
      input :apply_for
      input :current_company
      input :current_location
      input :expected_ctc
      input :expected_negotiable
      input :notice_period
      input :notice_period_negotiable
      input :status, :as => :select, collection: (['PENDING', 'ON HOLD', 'NOT RELEVANT', 'IN PROCESS', 'SCHEDULED', 'DISQUALIFIED', 'REJECTED','FIRST ROUND', 'SECOND ROUND','INTERVIEW ROUND','MACHINE TEST', 'HR ROUND', 'SELECTED', 'CONFIRMED', 'JOINED'])
      input :interview_type, :as => :select, collection: (['TELEPHONE INTERVIEW', 'FACE TO FACE INTERVIEW', 'SKYPE INTERVIEW'])
      input :interviewer, :as => :select, collection: (['Prateek Singh', 'Hemant Gupta', 'Anand Rajput', 'Sandeep Singh', 'Rohit Yadav', 'Nirmala Malviya', 'Gourav Lele', 'Manjari Mishra', 'Swati Mishra', 'Hitesh Kanwar' ])
      input :schedule_at
      input :admin_note
    end
    actions
  end
  #menu parent: "Profile"
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
    permitted = [:status, :interview_type, :interviewer, :admin_note, :schedule_at]
    permitted << :other if params[:action] == 'create' && current_user.admin?
    permitted
  end
  
end

