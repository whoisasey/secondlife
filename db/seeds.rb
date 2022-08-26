charities = Charity.create!({
  name: "The 519",
  website: "https://www.the519.org",
  phone: "416-392-6874",
  profile: "https://www.the519.org/public/img/press/the-519-logo.jpeg",
  charity_no: "119310761-RR0001",
  summary: "The 519 is committed to the health, happiness and full participation of the LGBTQ community",
  mission: "We provide free, accommodating and non-judgemental space where individuals, organizations and non-profit groups can meet, organize and work towards their goals. We share knowledge and insight gathered on the ground through consulting and workshop services, best practice research and public engagement campaigns.",
  vision: "The 519 is committed to the health, happiness and full participation of the LGBTQ community. We strive to make a real difference in people’s lives, while working to promote inclusion, understanding and respect. We respond to the evolving needs of the LGBTQ2S community, from counselling services and queer parenting resources to coming out groups, trans programming and senior’s support.",
  address: '519 Church St, Toronto, ON M4Y 2C9',
  target_group: '2SLGBTQ+',
  email: "Info@The519.org",
  services: "Newcomer Services, Education and Training, Financial Services, Community Support",
  accepted_items: "All clothing items",
})

puts 'charity added'