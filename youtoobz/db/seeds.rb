# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




hipsum = "90's lo-fi microdosing dreamcatcher forage 8-bit. Mumblecore church-key actually fingerstache master cleanse you probably haven't heard of them pitchfork. Mlkshk meh sartorial 8-bit, hella freegan selvage lomo. Leggings cornhole cronut, meggings mixtape dreamcatcher sustainable selfies cold-pressed. Leggings humblebrag vegan marfa salvia. Hoodie taxidermy kickstarter truffaut slow-carb. Raw denim leggings church-key chartreuse pop-up cred."


def rand_time(from, to=Time.now)
  Faker::Time.between(from.weeks.ago, to, :all)
  # Time.at(Faker::rand_in_range(from.to_f, to.to_f))
end

def rand_like
  Faker::Number.between(999, 9999) #=> "1968353479"
  # Faker::rand_in_range(from, to).to_i
end
def rand_dislike
  Faker::Number.between(66, 333) #=> "1968353479"
  # Faker::rand_in_range(from, to).to_i
end

user_list = [
  [1, "Tactics Boardshop", ""],
  [2, "Miguel Lozano", ""],
  [3, "wowshift", ""],
  [4, "Deeper Than Ever", ""],
  [5, "Elena Christou", ""],
  [6, "SoundYouNeed", ""],
  [7, "TheIoLoSo2", ""],
  [8, "Electro Posé", ""],
  [9, "Slavi Tonev", ""]
]

user_list.each do |id, user_name, image|
  User.create( id: id, user_name: user_name, image: image)
end




video_list = [
  ["Mitch's Junction City Birthday Session", 1, "https://www.youtube.com/embed/8g4nwACzaKo",
    "https://i.ytimg.com/vi/8g4nwACzaKo/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=upNF-bec7K-Xo-uS90hmxO4geTs",
    "#{hipsum}", rand_time(2), "246,997", rand_like, rand_dislike],
  ["David Guetta & Showtek - Bad (Miguel Lozano Remix)", 2, "https://www.youtube.com/embed/0iJQia3j8V4",
    "https://i.ytimg.com/vi/0iJQia3j8V4/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=mJ-oIQQgqRr7KdlYEVpRrYpmK70",
    "#{hipsum}", rand_time(1), "1,474", rand_like, rand_dislike],
  ["Touch & Go - Gotta Have U (Original Mix)", 3, "https://www.youtube.com/embed/YlzWEEgdiFE",
    "https://i.ytimg.com/vi/YlzWEEgdiFE/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=ajBUR4xlCwzMVyPjE4NHqyzwu5k",
    "#{hipsum}", rand_time(3), "983,125", rand_like, rand_dislike],
  ["Justin T - Like I Love You (The Equalizers Remix)", 4, "https://www.youtube.com/embed/9NUomWzmngg",
    "https://i.ytimg.com/vi/9NUomWzmngg/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=OBFQd82Pa6WAxNg8nHngRDVLOYw",
    "#{hipsum}", rand_time(4), "164,468", rand_like, rand_dislike],
  ["Nolan Feat. Amber Jolene Go Slow (Finnebasssen ...", 5, "https://www.youtube.com/embed/JCfaZsWRE6E",
    "https://i.ytimg.com/vi/JCfaZsWRE6E/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=Ac_l7B9DwSIep_-CyBxRqDPSkeI",
    "#{hipsum}", rand_time(5), "3,422,871", rand_like, rand_dislike],
  ["Robin Schulz - Same (Original Mix)", 6, "https://www.youtube.com/embed/I6l8lgZpI4U",
    "https://i.ytimg.com/vi/I6l8lgZpI4U/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=oII6AOjRgrXTFyczEcMlU5lLZXQ",
    "#{hipsum}", rand_time(6), "56,243", rand_like, rand_dislike],
  ["Erkka - Excommunication (Original Mix)", 7, "https://www.youtube.com/embed/NzWOi3CEFC8",
    "https://i.ytimg.com/vi/NzWOi3CEFC8/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=fOxkqzeqUEMy8eNy01cOzCqBv_0",
    "#{hipsum}", rand_time(7), "191,980", rand_like, rand_dislike],
  ["Gnarls Barkley - Crazy (TEEMID & Joie Tan Cover)", 8, "https://www.youtube.com/embed/qXHUpqdnwfE",
    "https://i.ytimg.com/vi/qXHUpqdnwfE/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=BAdMhcWMve7tS7lClmO5bPLB8_k",
    "#{hipsum}", rand_time(8), "1,861,020", rand_like, rand_dislike],
  ["Fabo - I cant Decide ft Angela Sheik (Flow & Zeo...)", 9, "https://www.youtube.com/embed/jrU2sOOFlDg",
    "https://i.ytimg.com/vi/jrU2sOOFlDg/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=cA_WDD965_LmVowvt5OL9TCNyjs",
    "#{hipsum}", rand_time(9), "5,660,887", rand_like, rand_dislike]
]

video_list.each do |title, user_id, video_url, img_url, description, date, viewstring, like, dislike|
  Video.create( title: title, user_id: user_id, video_url: video_url, img_url: img_url, description: description, date: date, viewstring: viewstring, like: like, dislike: dislike)
end


#
#
#
#     User.find(id)
# Video.user.user_name
