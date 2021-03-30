# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "erin", email: "erin@mail.com")

pets = Pet.create([
    {name: "Phoenix", img_url: "https://www.petmd.com/sites/default/files/styles/article_image/public/petmd-puppy-weight.jpg?itok=IwMOwGSX", about: "playful, young pup, gets along with other dogs, loves kids, hates the car", user_id: 33},
    {name: "Luna", img_url: "https://www.petmd.com/sites/default/files/styles/article_image/public/puppy-laying-down-outside.jpg?itok=ClNNCi52", about: "loves to snuggle and lay in the sun, still working on playing fetch, loves car rides and her humans", user_id: 33},
    {name: "Jack", img_url: "https://www.pitpat.com/wp-content/uploads/2020/06/puppy.png", about: "senior pup very loyal to his humans, loves attention and laying in the sun", user_id: 33}
])

