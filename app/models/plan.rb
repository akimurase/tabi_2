class Plan < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: 'ツマログの滝コース/ジンベイザメ/オスロブ', price:10000 },
    { id: 2, name: 'スミロン島コース/ジンベイザメ/オスロブ', price:20000 },
    { id: 3, name: 'カワサンの滝コース/ジンベイザメ/オスロブ', price:30000 },
    { id: 4, name: 'ボホール/チョコレートヒルズ/ターシャ/クルーズレストラン', price:40000 },
    { id: 5, name: 'シティー半日ツアー＋夜景ツアー', price:50000 },
    { id: 6, name: 'マラパスクワ/カランガマン/一泊二日', price:60000 },
  ]
end
