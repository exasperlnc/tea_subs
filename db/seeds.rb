# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

c1 = Customer.create!(first_name: "Finn", last_name: "Smith", email: "kitt.e.mail@email.com", address: "456 Main St" )
c2 = Customer.create!(first_name: "Ilsa", last_name: "VonLicktenstein", email: "ruff@email.com", address: "456 Center St" )

t1 = Tea.create!(title: "Tea 1", description: "The First Tea", temperature: 1, brew_time: 1 )
t2 = Tea.create!(title: "Tea 2", description: "The Second Tea", temperature: 2, brew_time: 2 )
t3 = Tea.create!(title: "Tea 3", description: "The Third Tea", temperature: 3, brew_time: 3)
t4 = Tea.create!(title: "Tea 4", description: "The Fourth Tea", temperature: 4, brew_time: 4)
t5 = Tea.create!(title: "Tea 5", description: "The Fifth Tea", temperature: 5, brew_time: 5)
t6 = Tea.create!(title: "Tea 6", description: "The Sixth Tea", temperature: 6, brew_time: 6)
t7 = Tea.create!(title: "Tea 7", description: "The Seventh Tea", temperature: 7, brew_time: 7)

Subscription.create!(customer: c1, tea: t1, title: t1.title, price: 1, status: false, frequency: 1)
Subscription.create!(customer: c1, tea: t2, title: t2.title, price: 2, status: false, frequency: 2)
Subscription.create!(customer: c1, tea: t3, title: t3.title, price: 3, status: true, frequency: 3)
Subscription.create!(customer: c1, tea: t1, title: t1.title, price: 1, status: false, frequency: 1)
Subscription.create!(customer: c1, tea: t4, title: t1.title, price: 4, status: true, frequency: 4)