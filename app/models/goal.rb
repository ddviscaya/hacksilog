class Goal < ApplicationRecord
  belongs_to :user
  has_many :daily_tasks
  belongs_to :category
end
