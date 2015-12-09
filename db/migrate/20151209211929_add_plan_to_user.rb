class AddPlanToUser < ActiveRecord::Migration
  def change
  	# which db to alter, name of new column, type of data to store
  	add_column :users, :plan_id, :integer
  end
end
