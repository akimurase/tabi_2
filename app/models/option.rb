class Option < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: 'スパ', optionprice:1000 },
    { id: 2, name: 'ショッピング', optionprice:0  },
    { id: 3, name: 'ホテル直帰', optionprice:0 },
  ]
end
