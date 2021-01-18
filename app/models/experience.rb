class Experience < ApplicationRecord
	validates :name, presence: true
	validates :email, uniqueness: true
	validates :contact, length: { minimum: 10 }
	validates :resume, presence: true
	validates :notice_period, presence:true
end
