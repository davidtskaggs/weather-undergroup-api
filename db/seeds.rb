Location.delete_all
User.delete_all

david = User.create(username: "david", password: "123456")
location1 = Location.create(city: "Sarasota", state: "FL", user_id: 1)
location2 = Location.create(city: "Greenwich", state: "CT", user_id: 1)
location3 = Location.create(city: "Rye", state: "NY", user_id: 1)
location4 = Location.create(city: "Charleston", state: "SC", user_id: 1)
