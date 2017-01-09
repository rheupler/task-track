class ChangeProjectsName < ActiveRecord::Migration[5.0]
  def change
    rename_table :project, :projects
  end
end
