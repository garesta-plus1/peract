class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts, dependent: :delete_all
  has_many :team_members, dependent: :delete_all
  has_many :group_messages, dependent: :delete_all
  has_many :comments, dependent: :delete_all
  has_many :notifications, dependent: :delete_all
  has_many :message_read_times, dependent: :delete_all

  validates :email, presence: true, uniqueness: true

end
