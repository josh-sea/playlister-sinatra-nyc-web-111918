# Add seed data here. Seed your database with `rake db:seed`

a1 = Artist.create(name: "Adele")

s1 = Song.create(name: "Hello", artist_id: a1.id)

g1 = Genre.create(name: "dance")

sg1 = SongGenre.create(song_id: s1.id, genre_id: g1.id)

ag1 = ArtistGenre.create(artist_id: a1.id, genre_id: g1.id)
