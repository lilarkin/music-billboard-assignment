1.times do
  Billboard.create(
            name: Faker::Name.name_with_middle, 
            )
end

puts "Persons seeded, there are now #{Person.count} people in the database."
