# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
User.create!(email: 'ryan@ryanore.com', first_name: 'Ryan', last_name: 'Admin', password: '123456',  role: 'admin')
User.create!(email: 'ryanoremail@gmail.com', first_name: 'RyanUser', last_name: 'User', password: '123456',  role: 'user')
Tag.create([{ :label => 'Documentary' }, { :label => 'Funny' }, { :label => 'Stupid' }])

Movie.create!([
	{
    user_id: '1',
		tags: [1,2],
		data: {
	    "poster_path": "/4do1m6EathXZAegiGlS9CfjXpWC.jpg",
	    "adult": false,
	    "overview": "Michael Moore's Capitalism: A Love Story comes home to the issue he's been examining throughout his career: the disastrous impact of corporate dominance on the everyday lives of Americans (and by default, the rest of the world).",
	    "release_date": "2009-09-06",
	    "genre_ids": [
	      99
	    ],
	    "id": 22074,
	    "original_title": "Capitalism: A Love Story",
	    "original_language": "en",
	    "title": "Capitalism: A Love Story",
	    "backdrop_path": "/vI1RY1JYAS1m94izWO9AFeIQ2xv.jpg",
	    "popularity": 2.203884,
	    "vote_count": 74,
	    "video": false,
	    "vote_average": 6.9
		}
  },
	{
    user_id: '1',
		tags: [1,3,4],
		data: {
			"poster_path": "/5j9VFEVjYn0FtqZGqDcmMPYSVoY.jpg",
      "adult": false,
      "overview": "Jackass 3D is a 3-D film and the third movie of the Jackass series. It follows the same premise as the first two movies, as well as the TV series. It is a compilation of various pranks, stunts and skits. Before the movie begins, a brief introduction is made by Beavis and Butt-head explaining the 3D technology behind the movie. The intro features the cast lining up and then being attacked by various objects in slow-motion. The movie marks the 10th anniversary of the franchise, started in 2000.",
      "release_date": "2010-10-15",
      "genre_ids": [
        35,
        99,
        28
      ],
      "id": 16290,
      "original_title": "Jackass 3D",
      "original_language": "en",
      "title": "Jackass 3D",
      "backdrop_path": "/q7A6qCqmy6daaqGRm3Ee3NUC3xN.jpg",
      "popularity": 2.279148,
      "vote_count": 288,
      "video": false,
      "vote_average": 6.5
		}
  }
])
