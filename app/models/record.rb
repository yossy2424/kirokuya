class Record < ApplicationRecord
  belongs_to :user
  has_one :comment
  
  validates :weight, presence: true
  validates :bady_fat_percentage, presence: true
  validates :month, presence: true
  validates :record_date, presence: true
  validates :user_id, presence: true
end