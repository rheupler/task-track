class AddGoalTimes < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :goal_time, :integer 
  end
end
