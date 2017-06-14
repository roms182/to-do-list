class Task < ApplicationRecord
  validates :title, presence: true
  validates :time, presence: true
end
