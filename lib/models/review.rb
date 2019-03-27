


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

def self.update_review
          puts "(▀̿Ĺ̯▀̿ ̿)".colorize(:yellow)
  puts "Alright- now, remember that review numbah?".colorize(:yellow)
  puts "enter it here so's I can pull it up for yah".colorize(:yellow)
  change_this = gets.chomp.to_i
  puts" ah, here it is!"
  # insert the rating
  puts "type it here so we can get it up for yah".colorize(:yellow)
  puts "alright, whaddya wanna change?".colorize(:yellow)
  puts "
  1 RATING
  2 COMMENT
  3 SUGGESTION"
  change_prompt = gets.chomp.to_i
  case change_prompt
  when 1
    puts "what rating would you like instead?".colorize(:yellow)
    new_rate = gets.chomp.to_i
    Review.update(change_this, rating: new_rate)
  when 2
    puts "Whatcha wanna say instead?".colorize(:yellow)
    new_comment = gets.chomp.to_i
    Review.update(change_this, rating: new_comment)
  when 3
    puts "Got a better suggestion?".colorize(:yellow)
    new_suggest = gets.chomp.to_i
    Review.update(change_this, rating: new_suggest)
end
end

def self.delete_review

puts "Ok, so you wanna delete one of your reviews huh?".colorize(:yellow)
puts "I suppose if thats somethin you really wanna do,".colorize(:yellow)
puts "I can help you out wit dat.".colorize(:yellow)
puts ""
puts "Tell me again that review number" .colorize(:yellow)
delete_this_id = gets.chomp.to_i
puts "are you really sure? type y for yes or n for no?".colorize(:yellow)
yes_or_no = gets.chomp.downcase
case yes_or_no
when "y"
  Review.delete(delete_this_id)
  puts "alright then, its gone, finito-my friend".colorize(:yellow)
  puts "check your reviews you wont see it there no more".colorize(:yellow)
when !"y"
  puts "lets get back to the menu then".colorize(:yellow)
end
end

end
