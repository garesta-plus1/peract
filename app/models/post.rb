class Post < ApplicationRecord

  validates :title, presence: true, length: { maximum: 30 }
  validates :detail, presence: true, length: { maximum: 200 }
  validates :published, inclusion: {in: [true, false]}
  validates :status, presence: true
  validates :num_of_planner, presence: true
  validates :num_of_engineer, presence: true
  validates :num_of_designer, presence: true
  validates :period, presence: true, length: { maximum: 24 }
  validates :scale, presence: true, length: { maximum: 100 }
  validates :category, presence: true
  validates :main_color, presence: true

  belongs_to :user
  has_many :team_members, dependent: :delete_all
  has_many :votes, dependent: :delete_all
  has_many :group_messages, dependent: :delete_all
  has_many :comments, dependent: :delete_all
  has_many :message_read_times, dependent: :delete_all

  enum status: { planning: 0, development: 1, release: 2 }

end
