def random_photo
  [
    "https://res.cloudinary.com/opratododia/image/upload/v1542558480/horse1_sihhvt.jpg",
    "https://res.cloudinary.com/opratododia/image/upload/v1542558476/horse2_xngm9u.jpg",
    "https://res.cloudinary.com/opratododia/image/upload/v1542558474/horse3_tuxscu.jpg"
  ].sample
end

Horse.destroy_all

6.times do
  Horse.create!(
    name: Faker::BojackHorseman.character,
    description: Faker::BojackHorseman.quote,
    photo: random_photo
  )
end
