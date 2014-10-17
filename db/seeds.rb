# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Video.delete_all
Category.delete_all

category_dramas = Category.create( title: "TV Dramas")
category_commedies = Category.create( title: "TV Commedies")
6.times do
  Video.create(
      title: "Family Guy",
      description: "In a wacky Rhode Island town, a dysfunctional family strive to cope with everyday life as they are thrown from one crazy scenario to another.",
      small_cover_url: "/tmp/family_guy.jpg",
      large_cover_url: "/tmp/family_guy.jpg",
      category_id: category_dramas.id
  )
end
Video.create(
    title: "Futurama",
    description: "Fry, a pizza guy is accidentally frozen in 1999 and thawed out New Year's Eve 2999.",
    small_cover_url: "/tmp/futurama.jpg",
    large_cover_url: "/tmp/futurama.jpg",
    category_id: category_dramas.id
)
Video.create(
    title: "Monk",
    description: "Adrian Monk is a brilliant San Francisco detective, whose obsessive compulsive disorder just happens to get in the way.",
    small_cover_url: "/tmp/monk.jpg",
    large_cover_url: "/tmp/monk_large.jpg",
    category_id: category_commedies.id
)
Video.create(
    title: "South Park",
    description: "Follows the misadventures of four irreverent grade-schoolers in the quiet, dysfunctional town of South Park, Colorado.",
    small_cover_url: "/tmp/south_park.jpg",
    large_cover_url: "/tmp/south_park.jpg",
    category_id: category_commedies.id
)