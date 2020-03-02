class CreateUserNewsSources < ActiveRecord::Migration[6.0]
  def change
    create_table :user_news_sources do |t|
      t.belongs_to :user
      t.belongs_to :news_source
      t.timestamps
    end
  end
end
