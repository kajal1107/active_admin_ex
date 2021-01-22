class ChangeIntegerLimitInFresher < ActiveRecord::Migration[6.1]
  def change
  	change_column :freshers, :contact, :integer, limit: 8
	end
end
