class CreateDailyTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_tasks do |t|
      t.string :name
      t.references :users, foreign_key: true
      t.boolean :done
      t.references :goals, foreign_key: true, null: true
      t.timestamps
    end
  end
end
