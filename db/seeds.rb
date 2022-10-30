# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Comment.destroy_all
Post.destroy_all

(1..200).each do |item|
    Post.create([
        title: Faker::Lorem.sentence(word_count: 3, supplemental: false, random_words_to_add: 0).chop,
        body: Faker::Lorem.sentence(word_count: 25, supplemental: false, random_words_to_add: 0).chop,
        state: rand(0..1),      
    ])
end

posts = Post.all
posts.each do | post |
    amount = rand(1..15);
    for iterator in 1..amount do
        Comment.create(
            title: Faker::Lorem.sentence(word_count: 3, supplemental: false, random_words_to_add: 0).chop,
            body: Faker::Lorem.sentence(word_count: 3, supplemental: false, random_words_to_add: 0).chop,
            state: rand(0..1),
            post_id: post['id']
        )
    end
end

