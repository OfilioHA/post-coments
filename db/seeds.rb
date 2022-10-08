# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Post.destroy_all
Comment.destroy_all

post1 = Post.create(
    title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet euismod enim. Morbi id consectetur orci. Proin sit amet nunc faucibus, mollis ligula ac. ",
    state: 1
)

coment1 = Comment.create(
    title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet euismod enim. Morbi id consectetur orci. Proin sit amet nunc faucibus, mollis ligula ac. ",
    state: 1,
    post: post1
)

