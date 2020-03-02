class NewsSource < ApplicationRecord
  has_many :articles, depend: :destroy
  has_many :user_news_sources, dependent: :destroy
  has_many :users, through: :user_news_sources
end
