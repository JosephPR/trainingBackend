# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dog.destroy_all
Cat.destroy_all
Exotic.destroy_all


Dog.create(name: "Beagle", image_url: "https://images-ra.adoptapet.com/seo/1/ff/14_ff.jpg", content: "Beagles are the 5th most popular dog breed in America and are adored for their curious, warm personalities.")
Cat.create(name: "Siamese", image_url: "https://images2.minutemediacdn.com/image/upload/c_crop,h_1194,w_2121,x_0,y_0/f_auto,q_auto,w_1100/v1554737083/shape/mentalfloss/77113-istock-176697468.jpg", content: "Siamese cats are one of the oldest breeds in the world. Get more facts about these mysterious and beautiful cats.")
Exotic.create(name: "Lemur", image_url: "https://images.newscientist.com/wp-content/uploads/2017/11/28100734/gettyimages-638610212-1.jpg", content: "Only after obtaining permission from the authorities, should you proceed to find a lemur breeder. In Madagascar, it has been illegal to kill, keep, or export lemurs as pets since 1964.")
