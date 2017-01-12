class AddSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :sessions do |t|
      t.column :start_time, :timestamp
      t.column :end_time, :timestamp
      t.column :project_id, :integer
      t.column :cumulative_time, :integer
      t.column :session_summary, :string
    end
  end
end
