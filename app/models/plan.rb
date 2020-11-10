class Plan < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: 'ツマログの滝コース/ジンベイザメ/オスロブ', price:10000, call:"Tu" },
    { id: 2, name: 'スミロン島コース/ジンベイザメ/オスロブ', price:20000, call:"Su" },
    { id: 3, name: 'カワサンの滝コース/ジンベイザメ/オスロブ', price:30000, call:"Ka" },
    { id: 4, name: 'ボホール/チョコレートヒルズ/ターシャ/クルーズレストラン', price:40000, call:'Bo' },
    { id: 5, name: 'シティー半日ツアー＋夜景ツアー', price:50000, call:'Ci' },
    { id: 6, name: 'マラパスクワ/カランガマン/一泊二日', price:60000, call:'Ma' },
  ]
end
