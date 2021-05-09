erin = User.create(name: "Erin", email: "erin@mail.com")


pets = Pet.create([
    {name: "Phoenix", img_url: "https://www.petmd.com/sites/default/files/styles/article_image/public/petmd-puppy-weight.jpg?itok=IwMOwGSX", about: "playful, young pup, gets along with other dogs, loves kids, hates the car", user_id: erin.id},
    {name: "Luna", img_url: "https://www.petmd.com/sites/default/files/styles/article_image/public/puppy-laying-down-outside.jpg?itok=ClNNCi52", about: "loves to snuggle and lay in the sun, still working on playing fetch, loves car rides and her humans", user_id: erin.id},
    {name: "Jack", img_url: "https://www.pitpat.com/wp-content/uploads/2020/06/puppy.png", about: "senior pup very loyal to his humans, loves attention and laying in the sun", user_id: erin.id}
])