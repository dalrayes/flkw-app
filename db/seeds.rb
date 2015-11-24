# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

15.times do
	Arrangement.create!(
	name:["Pink Summer", "Roses", "Spring Meadows"].sample, 
	item_number: '100', 
	price: rand(80), 
	availability: ['available', 'not_available'].sample, 
	width: '100', height: '100', 
	description: "Colored roses are paired with decorative greens in an elegant high vase.", 
	visibility: ['visible','not_visible'].sample,
	container_type: ['vase','box'].sample,  
	image: [File.new("#{Rails.root}/app/assets/images/Bouquet_1.png"), File.new("#{Rails.root}/app/assets/images/Bouquet_2.png"), File.new("#{Rails.root}/app/assets/images/Bouquet_3.png")].sample
	)
end



Flower.create!(flower_type: 'rose')

Flower.create!(flower_type: 'tulip')

Flower.create!(flower_type:'hydrangea')

Flower.create!(flower_type:'orchid')


Arrangement.all.each do |arr|
	ArrangementFlower.create!(arrangement: arr, flower: Flower.find(rand(1..4)))
end



AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

