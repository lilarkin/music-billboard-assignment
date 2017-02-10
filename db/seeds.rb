4.times do
  Billboard.create(
            name: "#{Faker::Pokemon.name} Chart" 
            )
end

puts "Billboards seeded, there are now #{Billboard.count} billboards in the database."

Billboard.all.each do |billboard|
  3.times do

  Artist.create(
            name: Faker::RockBand.name, 
            album: Faker::Space.star_cluster,
            billboard_id: billboard.id
        )
  end
end

puts "Artists seeded, there are now #{Artist.count} artists in the database."

Artist.all.each do |artist| 
  5.times do

  Song.create(
            title: Faker::TwinPeaks.location, 
            album: Faker::Space.star_cluster,
            artist_id: artist.id
            )
  end
end

puts "Songs seeded, there are now #{Song.count} songs in the database."
