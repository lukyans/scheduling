class Event < ApplicationRecord
  validates :name, presence: true
  validates :date, presence: true

  has_many_attached :attachments
  belongs_to :user, optional: true
  has_many :tasks, dependent: :destroy

  scope :only_public,    -> { where(private: false) }
  scope :only_private,   -> { where(private: true)  }
  scope :by_recent,      -> { order(date: :asc) }

  def start_time
    self.date
  end
end
