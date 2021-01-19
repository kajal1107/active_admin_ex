class Fresher < ApplicationRecord
	validates :name,:highest_qualification,:branch,:college,:passout_year,:current_location,:resume, presence: true
	validates :email, uniqueness: true
	validates :contact, length: { minimum: 10 }
end
