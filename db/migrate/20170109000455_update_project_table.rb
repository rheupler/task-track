class UpdateProjectTable < ActiveRecord::Migration[5.0]
  def change
    rename_table :projects, :project
  end
end
