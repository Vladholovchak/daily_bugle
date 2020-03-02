class User < ApplicationRecord
  has_many :user_news_sources
  has_many :news_sources, through: :user_news_sources
  has_many :articles, through: :news_sources
  # Include default devise modules. Others available are:
  # :lockable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :trackable, :timeoutable, :confirmable
end
