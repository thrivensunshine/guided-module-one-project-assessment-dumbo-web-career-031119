


class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :station





def self.create_one(user_instance)
  puts "type the station number"
  which_stat = gets.chomp.to_i
  this_stat = Station.all.find(which_stat)
  puts "rate the station with a number 1 through 5"
  rate_num = gets.chomp.to_i
  puts "So, what made you rate it like dat? "
  thought = gets.chomp
  puts "Noooow you can give your suggestion"
  suggest = gets.chomp
  Review.create(user_id: user_instance.id, station_id: this_stat.id,rating:rate_num, comment: thought,suggestion:suggest)
end

def update
  puts "whaddya wanna change?
  1 RATING
  2 COMMENT
  3 SUGGESTION"
  change_prompt = gets.chomp
  case change_prompt
  when 1
    puts "what rating would you like instead?"
    new_rate = gets.chomp.to_i
    self.rating.update(new_rate)
end
end


end
