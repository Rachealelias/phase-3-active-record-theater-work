Role.destroy_all
Audition.destroy_all

puts "creating roles..."
cady = Role.create(character_name: "Cady
Heron" )
racheal = Role.create(character_name: "Racheal")
jeni= Role.create(character_name: "Jeni")
jesse= Role.create(character_name: "Jesse")
mike= Role.create(character_name: "Mike")


puts "creating auditions..."
Audition.create(actor: "linday lohan", location: "texas", phone: 765890645, hired: true, role_id: 1)
Audition.create(actor: "baby spice", location: "newyork", phone: 765894645, hired: true, role_id: 2)

puts "seeding done"