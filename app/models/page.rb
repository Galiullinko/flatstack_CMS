class Page < ActiveRecord::Base
  validates :title, :body, :user_id, presence: true
  validates :position, inclusion: {in: %w(top right)}
  belongs_to :user

  scope :sorted, -> { order(title: :asc) }
end
