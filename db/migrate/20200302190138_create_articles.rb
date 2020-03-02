class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.belongs_to :news_source
      t.string :title, null: false, default: ''
      t.string :description, null: true, default: ''
      t.string :url, null: true, default: ''
      t.string :url_to_image, null: true, default: ''
      t.datetime :published_at, null: false, default: '2019-04-13 17:48:19'
      t.timestamps
    end
  end
end
