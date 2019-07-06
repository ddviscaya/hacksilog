class CreateStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :statuses do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :stats
      t.timestamps
    end
  end
end
