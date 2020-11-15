class Event < ApplicationRecord
  #モジュールを取り込む記述
  extend ActiveHash::Associations::ActiveRecordExtensions
  # アクティブハッシュ用アソシエーション
  belongs_to_active_hash :plan # これでなくても行ける？belongs_to_active_hash :plan
  belongs_to_active_hash :option
  belongs_to_active_hash :num

  attr_accessor :token
  validates :plan_id, :num_id,  :start_time, :name, :tel, :price, presence: true #:option_id,

# <ワード検索時の処理>
  def self.search(search)
    if search != ""
      Event.where('name LIKE(?)', "%#{search}%")
    else
      Event.all
    end
  end
end
