class Option < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: 'スパプラン', price:1000 },
    { id: 2, name: 'ショッピングプラン', price:0  },
    { id: 3, name: 'ホテル直帰', price:0 },
  ]
end
