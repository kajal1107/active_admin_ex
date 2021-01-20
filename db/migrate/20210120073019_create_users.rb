class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
    	t.integer :contact
    	t.string :city
    	t.string :state
    	t.boolean :is_admin
      t.timestamps
    end
  end
end
