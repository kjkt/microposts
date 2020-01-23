class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 }

  #参照するクラス"Favorite",foreign_key"micropost_id"
  has_many :favorites
   #has_many :favoritesの結果の中の参照先をsource: :useで指定
  has_many :favorite_by_users, through: :favorites, source: :user
end
