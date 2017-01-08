class Projects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.column :title, :string
      t.column :description, :string
      t.column :time, :integer
      t.column :user_id, :integer
    end
  end
end
