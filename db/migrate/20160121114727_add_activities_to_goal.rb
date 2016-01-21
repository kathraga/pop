class AddActivitiesToGoal < ActiveRecord::Migration
  def change
    add_column :goals, :activities, :string
  end
end
