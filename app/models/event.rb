class Event < ApplicationRecord
  #モジュールを取り込む記述
  extend ActiveHash::Associations::ActiveRecordExtensions
  # アクティブハッシュ用アソシエーション
  belongs_to :plan # これでなくても行ける？belongs_to_active_hash :plan
  belongs_to :option
  belongs_to :num

  attr_accessor :token
  # validates :plan, :num, :option, :start_time, :name, :tel, :price, presence: true
end
