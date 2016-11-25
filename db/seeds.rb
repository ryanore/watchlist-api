# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
User.create!(email: 'ryan@ryanore.com', first_name: 'Ryan', last_name: 'Admin', password: '123456',  role: 'admin')

User.create!(email: 'ryanoremail@gmail.com', first_name: 'RyanUser', last_name: 'User', password: '123456',  role: 'user')

List.create!(user_id: '1', name: 'Documentaries(admin)' )

List.create!(user_id: '2', name: 'Documentaries(user)' )

Movie.create!([
  {
    user_id: '1',
    list_id: '1',
    data: {
      "poster_path": "/ub8d4LNtfwfibUclk89KDNQJx5k.jpg",
      "adult": false,
      "overview": "Eddie Izzard's routine has a loose trajectory from the beginning of the Old Testament and the creation of the world in seven days to Revelations. Along the way, we learn of the search for a career, bad giraffes, Prince Philip's gaffes, toilets in French campsites, the mysteries of hopscotch, becoming one's Dad and tranny bashing.",
      "release_date": "1997-11-17",
      "genre_ids": [
      35,
      99
      ],
      "id": 13590,
      "original_title": "Eddie Izzard: Glorious",
      "original_language": "en",
      "title": "Eddie Izzard: Glorious",
      "backdrop_path": "/2XHkh7xLqH168KRqMwDuiTmuyQi.jpg",
      "popularity": 5.240644,
      "vote_count": 9,
      "video": false,
      "vote_average": 5.67
    }
  } , {
    user_id: '2',
    list_id: '2',
    data: {
      "poster_path": "/ub8d4LNtfwfibUclk89KDNQJx5k.jpg",
      "adult": false,
      "overview": "Eddie Izzard's routine has a loose trajectory from the beginning of the Old Testament and the creation of the world in seven days to Revelations. Along the way, we learn of the search for a career, bad giraffes, Prince Philip's gaffes, toilets in French campsites, the mysteries of hopscotch, becoming one's Dad and tranny bashing.",
      "release_date": "1997-11-17",
      "genre_ids": [
      35,
      99
      ],
      "id": 13590,
      "original_title": "Eddie Izzard: Glorious",
      "original_language": "en",
      "title": "Eddie Izzard: Glorious",
      "backdrop_path": "/2XHkh7xLqH168KRqMwDuiTmuyQi.jpg",
      "popularity": 5.240644,
      "vote_count": 9,
      "video": false,
      "vote_average": 5.67
    }
  } , {
    user_id: '1',
    list_id: '1',
    data: {
      "poster_path": "/ub8d4LNtfwfibUclk89KDNQJx5k.jpg",
      "adult": false,
      "overview": "Eddie Izzard's routine has a loose trajectory from the beginning of the Old Testament and the creation of the world in seven days to Revelations. Along the way, we learn of the search for a career, bad giraffes, Prince Philip's gaffes, toilets in French campsites, the mysteries of hopscotch, becoming one's Dad and tranny bashing.",
      "release_date": "1997-11-17",
      "genre_ids": [
      35,
      99
      ],
      "id": 13590,
      "original_title": "Eddie Izzard: Glorious",
      "original_language": "en",
      "title": "Eddie Izzard: Glorious",
      "backdrop_path": "/2XHkh7xLqH168KRqMwDuiTmuyQi.jpg",
      "popularity": 5.240644,
      "vote_count": 9,
      "video": false,
      "vote_average": 5.67
    }
  }
])
