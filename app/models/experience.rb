class Experience < ApplicationRecord
	validates :name,:experience,:branch,:current_company,:current_location,:resume,:current_ctc,:expected_ctc,:notice_period, presence: true
	validates :email, uniqueness: true
	validates :contact, length: { minimum: 10 }
end
