class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :activity
      t.references :goal, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
