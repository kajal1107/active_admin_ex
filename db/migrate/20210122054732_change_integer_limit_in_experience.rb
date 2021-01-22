class ChangeIntegerLimitInExperience < ActiveRecord::Migration[6.1]
  def change
  	change_column :experiences, :contact, :integer, limit: 8
  end
end
