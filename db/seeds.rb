# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# 初期データ
company = Company.create(name: "アーカイブ",zipcode: "1150044",address1: "東京都北区赤羽南",address2: "1-21-3 カラムビル2階",network_code: "10000",homepage: "https://archive-asia.co.jp")
user = User.new(login_name: "test", company: company, name: "管理者", roles: 0, mail: "info@archive-asia.co.jp", unit_position: "管理者", password: "test1234")
user.save!

if Rails.env == 'development'

  # (1..50).each do |i|
  #   Company.create(name: "アーカイブ#{i}", address1: "住所１#{i}", address2: "住所２#{i}", network_code: "CODE_#{i}", homepage: "archive-asia.#{i}")
  # end
end
