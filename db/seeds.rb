10.times { |i| Location.create!(name: "name#{i}") }

(1..10).each { |i| LocationComic.create(location_id: 1, comic_id: i) }
(2..5).each { |i| LocationComic.create(location_id: 2, comic_id: i) }
(10..15).each { |i| LocationComic.create(location_id: 3, comic_id: i) }
(8..9).each { |i| LocationComic.create(location_id: 4, comic_id: i) }
(5..7).each { |i| LocationComic.create(location_id: 5, comic_id: i) }
LocationComic.create(location_id: 6, comic_id: 6)