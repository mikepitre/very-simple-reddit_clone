# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do
 user = User.create(name: Faker::Name.name, email: Faker::Internet.safe_email, password_digest: Faker::Internet.password)
 link = Link.create(title: Faker::Name.title, body: Faker::Lorem.paragraph, user_id: user.id)
 vote = Vote.create(link_id: link.id, user_id: user.id)
end
