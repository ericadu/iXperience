# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
places = [
  ["Lion's Head",
    "Lion's Head Table Mountain National Park",
    "Lion's Head is a mountain in Cape Town, South Africa, between Table Mountain and Signal Hill. Lion's Head peaks at 669 metres (2,195 ft) above sea level. The peak forms part of a dramatic backdrop to the city of Cape Town and is part of the Table Mountain National Park.",
    "http://www.capetown.travel/cache/ce_cache/made/Lionshead_by_Philip_Friederich_380_285_80.jpg", 
    5
    ],

  ["Signal Hill",
    "Signal Hill Table Mountain National Park",
    "A place to watch an awesome sunset!",
    "https://capetownincolour.files.wordpress.com/2014/12/sunset-over-city.jpg",
    4
  ], 
  ["iXperience",
    "19 Park Rd",
    "A Bru Paradise",
    "https://pbs.twimg.com/profile_images/467248542537379840/AgqCzATA.png",
    5
  ]
]

places.each do |name, addr, descrip, img, rating|
  Place.create(name: name, address: addr, description: descrip, image: img, rating: rating)
end