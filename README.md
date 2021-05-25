# README

# Restaurant.count # => Returns the number of rows in the restaurants table

# Restaurant.find(1) # => Returns the restaurant with id 1 (or raises EXCEPTION if not found)
# Restaurant.all # => returns an "array" of all the restaurants

# Restaurant.where(address: "Botafogo") # => Returns an "array" of restaurants
# Restaurant.find_by(address: "Botafogo") # => Returns the FIRST restaurant found for that criteria


# vegan = Restaurant.new(name: "Vegan Vegan", rating: 10, address: "Botafogo")
# vegan.save

# Restaurant.create(name: "McDonalds", rating: 5, address: "Botafogo")

# vegan.rating = 9
# vegan.save

# vegan.update(name: "Super Vegan Vegan", rating: 10)

# vegan.destroy