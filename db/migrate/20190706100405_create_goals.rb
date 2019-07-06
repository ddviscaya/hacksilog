class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.string :name
      t.references :categories, foreign_key: true
      t.references :users, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :done
      t.timestamps
    end
  end
end
