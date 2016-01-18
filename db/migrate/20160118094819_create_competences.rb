class CreateCompetences < ActiveRecord::Migration
  def change
    create_table :competences do |t|
      t.string :name
      t.string :ec

      t.timestamps null: false
    end
  end
end
