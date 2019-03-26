
 require'pry'

class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :station



def get_user_review
self.all.map {|comment| comment.comment}
end

def self.create_one(user_input)
  puts "type the station number"
  which_stat = gets.chomp.to_i
  this_stat = Station.all.find(which_stat)
  puts "rate the station with a number 1 through 5"
  rate_num = gets.chomp.to_i
  puts "leave a comment! but save your suggestion!"
  thought = gets.chomp
  puts "Noooow you can give your suggestion"
  suggest = gets.chomp
  Review.create(user_id: user_input.id, station_id: this_stat.id, comment: thought,suggestion:suggest)
end



end
