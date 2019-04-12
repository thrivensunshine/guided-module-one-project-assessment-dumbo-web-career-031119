User.destroy_all
Station.destroy_all
Review.destroy_all

User.create(name:"sally")
User.create(name:"Jim")
User.create(name:"bob")

Station.create(name:"herald square",line: "a-c-e")
Station.create(name:"times square", line:"1-2-3")
Station.create(name: "canal", line: "4-6-6 Express")
Station.create(name: "carroll st", line: "F-G")
Station.create(name: "astor pl" , line:"4-6-6 Express")
Station.create(name: "50th st" , line: "1-2")
Station.create(name: "bergen St", line: "2-3-4")
Station.create(name: "pennsylvania ave", line: "3-4")
Station.create(name: "238th st", line: "1")
Station.create(name: "cathedral pkwy(110st)", line: "A-B-C")
Station.create(name: "kingston - throop aves", line: "A-C")
Station.create(name: "delancey St - essex st", line: "")
Station.create(name: "grand central - 42nd st", line: "4-5-6-6 express")
Station.create(name: "frankilin ave", line:"2-3-4-5")
Station.create(name: "14th st", line: "1-2-3-f-m-a-c-e")
Station.create(name: "23rd st", line: "4-6-6 express-1-2-f-m-n-q-r-w-a-c-e")
Station.create(name: "34th st penn station", line: "1-2-3-a-c-e")
Station.create(name: "42nd st - port authority" , line: "a-c-e")
Station.create(name: "50th st", line:"1-2-d-a-c-e")
# Station.create(name: , line:)
# Station.create(name: , line:)
# Station.create(name: , line:)
# Station.create(name: , line:)
# Station.create(name: , line:)
# Station.create(name: , line:)
# Station.create(name: , line:)
# Station.create(name: , line:)
# Station.create(name: , line:)
# Station.create(name: , line:)
# Station.create(name: , line:)
# Station.create(name: , line:)
# Station.create(name: , line:)
# Station.create(name: , line:)
# Station.create(name: , line:)
# Station.create(name: , line:)


Review.create(user_id: sally.id, station_id: canal.id, comment: "eh its aight", rating: 4)

Review.create(user_id: jim.id, station_id: times.id)

Review.create(user_id: bob.id, station_id: canal.id)

Review.create(user_id: sally.id, station_id: herald.id)
