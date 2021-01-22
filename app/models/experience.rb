class Experience < ApplicationRecord
	validates :name,:experience,:branch,:current_company,:current_location,:resume,:current_ctc,:expected_ctc,:notice_period, presence: true
	validates :email, uniqueness: true, format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/ }
	validates :contact, length: { minimum: 10 }
end
