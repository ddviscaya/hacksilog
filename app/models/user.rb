class User < ApplicationRecord
  has_many :goals
  has_many :daily_tasks
  has_many :statuses
end
