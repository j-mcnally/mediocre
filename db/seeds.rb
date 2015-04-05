# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Site.all.empty?
  Site.create(title: "Default Site")
end

user = User.new.tap do |u|
  u.email = ENV['SEED_USERNAME']
  u.password = ENV['SEED_PASSWORD']
  u.password_confirmation = ENV['SEED_PASSWORD']
  u.skip_confirmation!
  u.save!
end