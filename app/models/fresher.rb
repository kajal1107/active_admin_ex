class Fresher < ApplicationRecord
	validates :name,:highest_qualification,:branch,:college,:passout_year,:current_location,:resume, presence: true
	validates :email, uniqueness: true, format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/ }
	validates :contact, length: { minimum: 10 }
end
