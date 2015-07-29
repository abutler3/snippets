class Snippet < ActiveRecord::Base
  belongs_to :user
  has_many :likes
  validates :user_id, presence: true
  validates :name, presence: true, length: { minimum: 5, maximum: 100 }
  validates :summary, presence: true, length: { minimum: 5, maximum: 100 }
  validates :description, presence: true

  def thumbs_up_total
    self.likes.where(like: true).size
  end

  def thumbs_down_total
    self.likes.where(like: false).size

  end

end
