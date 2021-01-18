class CreateExperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :experiences do |t|
      t.string :name
			t.string :email
			t.string :gender
			t.integer :contact
			t.integer :experience
			t.string :highest_qualification
			t.string :branch
			t.string :apply_for 
			t.string :current_company
			t.string :current_location
			t.string :resume
			t.string :note
			t.string :status, default: "PENDING" 
			t.string :interview_type
			t.string :interviewer
			t.string :admin_note
			t.integer :current_ctc
			t.integer :expected_ctc
			t.integer :expected_negotiable
			t.integer :notice_period
			t.integer :notice_period_negotiable
			t.date :schedule_at
		  t.timestamps
    end
  end
end
