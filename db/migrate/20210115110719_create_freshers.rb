class CreateFreshers < ActiveRecord::Migration[6.1]
  def change
    create_table :freshers do |t|
      t.string :name
      t.string :email
      t.string :gender
      t.integer :contact
      t.string :highest_qualification
      t.string :branch
      t.string :college
      t.integer :passout_year
      t.integer :current_location
      t.string :resume
      t.string :note
      t.string :status, default: "PENDING"
      t.string :interview_type
      t.date	 :schedule_at
			t.string :interviewer
			t.string :admin_note
      
      t.timestamps
    end
  end
end
