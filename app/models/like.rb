class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :snippet

  validates_uniqueness_of :user, scope: :snippet
end
