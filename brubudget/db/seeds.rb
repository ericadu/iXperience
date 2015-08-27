# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create! :email => 'brian@gmail.com', :password => 'lekkerlekker', :password_confirmation => 'lekkerlekker'
user2 = User.create! :email => 'ian@gmail.com', :password => 'brubrubru', :password_confirmation => 'brubrubru'
user3 = User.create! :email => 'erica@gmail.com', :password => 'howzithowzit', :password_confirmation => 'howzithowzit'

expenditures3 = user3.expenditures.create!(
  [
    { name: 'Avocado', quantity: 4, price: 22, purchase_date: DateTime.new(2015, 06, 02), image: File.new("#{Rails.root}/app/assets/images/avocado.jpg") },
    { name: 'Phone', quantity: 2, price: 600, purchase_date: DateTime.new(2015, 06, 01), image: File.new("#{Rails.root}/app/assets/images/phone.jpg") },
    { name: 'Knead', quantity: 1, price: 60, purchase_date: DateTime.new(2015, 06, 03), image: File.new("#{Rails.root}/app/assets/images/knead.jpg") },
    { name: 'Birthday Cake', quantity: 2, price: 50, purchase_date: DateTime.new(2015, 06, 01), image: File.new("#{Rails.root}/app/assets/images/cake.jpg") }
  ])