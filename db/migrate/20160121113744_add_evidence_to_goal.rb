class AddEvidenceToGoal < ActiveRecord::Migration
  def change
    add_column :goals, :evidence, :string
  end
end
