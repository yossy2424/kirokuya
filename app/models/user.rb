class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :record

  validate :nickname, presence: true
  validate :height, presence: true
  validate :weight, presence: true
  validate :sex, presence: true
  validate :target_weight, presence: true
end
