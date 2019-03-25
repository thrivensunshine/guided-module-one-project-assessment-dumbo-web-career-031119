User.destroy_all
Station.destroy_all
Review.destroy_all

sally= User.create(name:"sally")
jim= User.create(name:"Jim")
bob= User.create(name:"bob")

herald = Station.create(name:"Herald Square",line: "A-C-E")
times = Station.create(name:"Times Square", line:"1-2-3")
canal = Station.create(name: "Canal", line: "4-6-6 EXPRESS")
car = Station.create(name: "Carroll St", line: "F-G")

one = Review.create(user_id: sally.id, station_id: canal.id, comment: "eh its aight", rating: 4)

two = Review.create(user_id: jim.id, station_id: times.id)

three = Review.create(user_id: bob.id, station_id: canal.id)

four = Review.create(user_id: sally.id, station_id: herald.id)
