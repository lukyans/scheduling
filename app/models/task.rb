class Task < ApplicationRecord
  validates :name, presence: true
  belongs_to :event
end
