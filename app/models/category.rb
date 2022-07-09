class Category < ActiveHash::Base
  self.data = [
    {id: 0, name: '--'},
    {id: 1, name: 'お肉のおかず'},
    {id: 2, name: '魚介のおかず'},
    {id: 3, name: '野菜のおかず'},
    {id: 4, name: 'パスタ・グラタン'},
    {id: 5, name: 'ごはんもの'},
    {id: 6, name: 'サラダ'},
    {id: 7, name: '麺'},
    {id: 8, name: 'シチュー・スープ・汁物'},
    {id: 9, name: '鍋'}
  ]

  include ActiveHash::Associations
  has_many :cookings
end