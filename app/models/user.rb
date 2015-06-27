class User < ActiveRecord::Base
  has_many :snippets
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # validates :name, length: { minimum: 3, maximum: 40 }
end
