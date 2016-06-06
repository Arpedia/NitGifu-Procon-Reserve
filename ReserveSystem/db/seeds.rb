# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@reserve = Reserve.new
@reserve.reserve_id = 1000000000
@reserve.name = "test テスト"
@reserve.age = 0
@reserve.sex = TRUE
@reserve.adress = "東京都新宿区1-1-1 ,JAPAN"
@reserve.phonenum = 1234567890
@reserve.facilityid = 00000
@reserve.date = 00
@reserve.save


