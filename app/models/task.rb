class Task < ApplicationRecord
  validates :name, presence: true
  belongs_to :event

  scope :by_high,     -> { where(priority: "High") }
  scope :by_medium,   -> { where(priority: "Medium") }
  scope :by_low,      -> { where(priority: "Low") }
end
