class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :description
      t.text :reflection
      t.references :competence, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
