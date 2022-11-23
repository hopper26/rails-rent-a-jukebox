# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"

arr = ["https://imgs.search.brave.com/dcPmIe6DGG4dWAKiPy4J7k2HxlLgCnb3Pkq92VPTgD0/rs:fit:474:225:1/g:ce/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5P/d29aWUh6MlFpdHVU/d0xVMDVNMlJnSGFI/YSZwaWQ9QXBp",
       "https://imgs.search.brave.com/HW1n9mmMuslTlX8sRYYSSED8ytKQ2SJtkjHcGp1e-vE/rs:fit:289:225:1/g:ce/aHR0cHM6Ly90c2Uy/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5a/cUd3Q05VWDRjSzJ0/andHTVJvVXhBSGFN/SiZwaWQ9QXBp",
       "https://imgs.search.brave.com/WOzWcLbZQEzSVu-eRYghhRvQE-ciZnYW9TL_Jn2p23U/rs:fit:337:225:1/g:ce/aHR0cHM6Ly90c2Uy/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC54/Q2RtV1FmaXFVZWNt/Q3FzTmNlNW13SGFL/YSZwaWQ9QXBp",
       "https://imgs.search.brave.com/KXqGIgoZ-PSrb1TmvgDP2eC6eCH9wRnzoMNZDML-ioA/rs:fit:355:225:1/g:ce/aHR0cHM6Ly90c2Uy/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC43/ak5JZXgtTHE4S1ot/Z3pIVWFXc1dRSGFK/NCZwaWQ9QXBp",
       "https://imgs.search.brave.com/FfboEwwTwDDIHy0iWKVPm-_ycb5yj_-7wunCSna8ji0/rs:fit:632:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC56/d0VGSXpRcG1oeDI5/YmloeHVwU1d3SGFG/aiZwaWQ9QXBp"]

5.times do
  user = User.new(
    first_name: Faker::JapaneseMedia::StudioGhibli.character,
    last_name: Faker::JapaneseMedia::StudioGhibli.character,
    address: "space",
    email: "123@gmail.com",
    password: "password"
  )
  user.save
  puts user.first_name
  puts user.last_name
end

5.times do
  item = Item.new(
    title: Faker::Music.album,
    price: Random.rand(300),
    image: arr[rand(5)],
    content: Faker::JapaneseMedia::StudioGhibli.quote,
    user_id: 1
  )
  item.save
end
