class CreateDailyTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_tasks do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.boolean :done, default: false
      t.references :goal, foreign_key: true, null: true
      t.datetime :start_date
      t.timestamps
    end
  end
end
