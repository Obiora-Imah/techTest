# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


data =  Classes::ApiHelperClass.get_hard_cover("hardcover-fiction", "2018-01-07")
data["results"].each do |record| 
  bc = BookCategory.new({
    weeks_on_list: record["weeks_on_list"],
    position: record["rank"],
    list_name: record["list_name"],
    position_last_week: record["rank_last_week"]
  })
  record["book_details"].each do |book|
    bc.books << Book.new(
      title: book["title"],
      author: book["author"]
    )
  end
  bc.save!
end