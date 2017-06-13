class Task < ApplicationRecord
  validates :title, :time, presence: true
end
