class AddGoalTimesToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :goal_time, :integer
  end

  def remove_column
    remove_column :users, :goal_time
  end
end
