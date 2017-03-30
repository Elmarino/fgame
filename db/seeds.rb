Deck.create!([
  {name: "Warriors", speciality: "3pt Shoot", position: 2, place: nil},
  {name: "Cavaliers", speciality: "Penetration", position: 1, place: nil},
  {name: "Celtics", speciality: "4ième Quart/Temps", position: 2, place: nil}
])
Joueur.create!([
  {name: "Stephen Curry", attack: 94, defense: 80, speciality: "3pt shooting", deck_id: 1, avatar_file_name: "curryhs.png", avatar_content_type: "image/png", avatar_file_size: 361492, avatar_updated_at: "2017-03-26 18:00:34"},
  {name: "Kevin Durant", attack: 90, defense: 84, speciality: "3pt shooting", deck_id: 1, avatar_file_name: "duranths.png", avatar_content_type: "image/png", avatar_file_size: 342572, avatar_updated_at: "2017-03-26 18:00:47"},
  {name: "Draymond Green", attack: 88, defense: 90, speciality: "defensive", deck_id: 1, avatar_file_name: "greenhs.png", avatar_content_type: "image/png", avatar_file_size: 347259, avatar_updated_at: "2017-03-26 18:00:57"},
  {name: "Zaza Pachulia", attack: 75, defense: 70, speciality: "pass first", deck_id: 1, avatar_file_name: "pachuliahs.png", avatar_content_type: "image/png", avatar_file_size: 333193, avatar_updated_at: "2017-03-26 18:01:20"},
  {name: "Klay Thompson", attack: 89, defense: 92, speciality: "3pt shooting", deck_id: 1, avatar_file_name: "klayhs.png", avatar_content_type: "image/png", avatar_file_size: 360871, avatar_updated_at: "2017-03-26 17:24:45"},
  {name: "Isaiah Thomas", attack: 87, defense: 75, speciality: "3pt shooting", deck_id: 5, avatar_file_name: "isaiahhs.png", avatar_content_type: "image/png", avatar_file_size: 334041, avatar_updated_at: "2017-03-26 17:25:06"},
  {name: "Marcus Smart", attack: 75, defense: 75, speciality: "pump faker", deck_id: 5, avatar_file_name: "smarths.png", avatar_content_type: "image/png", avatar_file_size: 342110, avatar_updated_at: "2017-03-26 17:25:18"},
  {name: "Al Horford", attack: 84, defense: 80, speciality: "pump faker", deck_id: 5, avatar_file_name: "alhs.png", avatar_content_type: "image/png", avatar_file_size: 314417, avatar_updated_at: "2017-03-26 17:25:32"},
  {name: "Kelly Olynyk", attack: 75, defense: 69, speciality: "pump faker", deck_id: 5, avatar_file_name: "kellyhs.png", avatar_content_type: "image/png", avatar_file_size: 333076, avatar_updated_at: "2017-03-26 17:25:43"},
  {name: "Jonas Jerebko", attack: 71, defense: 70, speciality: "all-around player", deck_id: 5, avatar_file_name: "jonashs.png", avatar_content_type: "image/png", avatar_file_size: 315173, avatar_updated_at: "2017-03-26 17:25:54"},
  {name: "Jaylen Brown", attack: 75, defense: 80, speciality: "all-around player", deck_id: 5, avatar_file_name: "brownhs.png", avatar_content_type: "image/png", avatar_file_size: 347425, avatar_updated_at: "2017-03-26 17:26:07"},
  {name: "David West", attack: 74, defense: 70, speciality: "defensive", deck_id: 1, avatar_file_name: "wesths.png", avatar_content_type: "image/png", avatar_file_size: 325303, avatar_updated_at: "2017-03-26 17:26:20"},
  {name: "Kevin Love", attack: 85, defense: 79, speciality: "3pt shooting", deck_id: 3, avatar_file_name: "lovehs.png", avatar_content_type: "image/png", avatar_file_size: 333013, avatar_updated_at: "2017-03-26 17:26:32"},
  {name: "Lebron James", attack: 99, defense: 99, speciality: "All-around player", deck_id: 3, avatar_file_name: "jameshs.png", avatar_content_type: "image/png", avatar_file_size: 362888, avatar_updated_at: "2017-03-26 18:02:37"},
  {name: "Kyle Korver", attack: 80, defense: 80, speciality: "3pt shooting", deck_id: 3, avatar_file_name: "kylehs.png", avatar_content_type: "image/png", avatar_file_size: 334214, avatar_updated_at: "2017-03-26 18:03:21"},
  {name: "Kyrie Irving", attack: 85, defense: 79, speciality: "Cross-over & 3pt shooting", deck_id: 3, avatar_file_name: "kyriehs.png", avatar_content_type: "image/png", avatar_file_size: 343657, avatar_updated_at: "2017-03-26 18:04:02"},
  {name: "Tristan Thompson", attack: 75, defense: 75, speciality: "Defense", deck_id: 3, avatar_file_name: "tristanhs.png", avatar_content_type: "image/png", avatar_file_size: 337139, avatar_updated_at: "2017-03-26 18:05:59"},
  {name: "J.R. Smith", attack: 76, defense: 75, speciality: "Dunk", deck_id: 3, avatar_file_name: "smithhs.png", avatar_content_type: "image/png", avatar_file_size: 332428, avatar_updated_at: "2017-03-26 20:34:53"}
])
User.create!([
  {email: "elmar.atavares@gmail.com", encrypted_password: "$2a$11$CVzlOCR9QU9c23SDByQJleXBYjpvPXNzS9tJZRWZTVzBIzQfDJeZm", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 5, current_sign_in_at: "2017-03-26 15:42:11", last_sign_in_at: "2017-03-26 15:20:00", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", admin: true, username: "Elmarino"},
  {email: "elmar@hotboy.com", encrypted_password: "$2a$11$UctKzDUNljRTKrELzmEileUGEmjXL9wBkYG.C/CZ72dHakqPu1BZi", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 3, current_sign_in_at: "2017-03-26 21:01:41", last_sign_in_at: "2017-03-26 13:57:26", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", admin: false, username: "ElFuchito"},
  {email: "remy.hannequin@u-pem.fr", encrypted_password: "$2a$11$AwCpPueZdsK5PORqUBQYXOAOZZtxL9W82GpO77nN2JHJ4p5HkkrjW", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2017-03-26 22:04:36", last_sign_in_at: "2017-03-26 22:04:36", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", admin: false, username: "remy"}
])
