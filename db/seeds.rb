# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Cat.destroy_all

Cat.create(
[
  {
    name: "Dexter",
    breed: "Abyssinian",
    color: "brown",
    age_category: "adolescent"
  },
  {
    name: "Foofoo",
    breed: "Fairycat",
    color: "pink",
    age_category: "adult"
  },
  {
    name: "Salamander",
    breed: "short-hair",
    color: "black",
    age_category: "adult"
  },
  {
    name: "Max",
    breed: "long-hair",
    color: "grey",
    age_category: "senior"
  },
  {
    name: "Ceasar",
    breed: "Norwegian Forest Cat",
    color: "grey and white",
    age_category: "kitten"
  },        
  {
    name: "Jack",
    breed: "Balinese",
    color: "grey",
    age_category: "kitten"
  },     
  {
    name: "Sally",
    breed: "Norwegian Forest Cat",
    color: "brown and black",
    age_category: "kitten"
  },  
  {
    name: "Jorge",
    breed: "Sphinx",
    color: "grey",
    age_category: "adult"
  },   
  {
    name: "Sam",
    breed: "Norwegian Forest Cat",
    color: "grey and white",
    age_category: "senior"
  },   
  {
    name: "Jezzy",
    breed: "Norwegian Forest Cat",
    color: "tan and white",
    age_category: "kitten"
  },   
  {
    name: "Blob",
    breed: "Ragdoll",
    color: "brown seal point",
    age_category: "adolescent"
  }            
]
)