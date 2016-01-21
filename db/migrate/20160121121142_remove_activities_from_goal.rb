class RemoveActivitiesFromGoal < ActiveRecord::Migration
  def change
    remove_column :goals, :activities, :string
  end
end
