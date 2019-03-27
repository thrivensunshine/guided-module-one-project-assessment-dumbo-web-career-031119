

# #  ==============GREET =============
# def greet
#   puts "hey yo, hows it hangin?".colorize(:yellow)
#   puts "welcome to the station rater".colorize(:yellow)
#   puts "this is the spot yous guys can rate".colorize(:yellow)
#   puts "and comment on the beee-utiful stations".colorize(:yellow)
#   puts "here in New York City".colorize(:yellow)
# end
#
# # =============================
# def get_choice
#   user_choice = gets.chomp
#   user_choice
# end
# def options_opens
# puts "First of all- lets get to know eachother- whats yah name?".colorize(:yellow)
# user_name = gets.chomp
# user_name = User.create(name: user_name)
# puts "Ok #{user_name.name}, whatcha wanna do?".colorize(:yellow)
# puts "TYPE 1 to:".colorize(:white)+" See A Lits Of Stations".colorize(:blue)
# puts "TYPE 2 to:".colorize(:white)+" Review A Station".colorize(:blue)
# puts "TYPE 3 to:".colorize(:white)+" Leave a Suggestion".colorize(:blue)
# puts "TYPE 4 to".colorize(:white)+" View Your Reviews".colorize(:blue)
# puts "TYPE 5 to".colorize(:white)+" Change or Delete Your Review".colorize(:blue)
# end
#
#  def options
#    puts "Ok #{user_name.name}, whatcha wanna do?".colorize(:yellow)
#    puts "TYPE 1 to:".colorize(:white)+" See A Lits Of Stations".colorize(:blue)
#    puts "TYPE 2 to:".colorize(:white)+" Review A Station".colorize(:blue)
#    puts "TYPE 3 to:".colorize(:white)+" Leave a Suggestion".colorize(:blue)
#    puts "TYPE 4 to".colorize(:white)+" View Your Reviews".colorize(:blue)
#    puts "TYPE 5 to".colorize(:white)+" Change or Delete Your Review".colorize(:blue)
# end
#
#
#
# def list_stations_prompt
#   puts "ah right, how you gonna review a station if you dont know the station?".colorize(:yellow)
#   puts "we've got a lot here, so why dont you tell me the first number or letter ".colorize(:yellow)
#   puts "of the station and I'll give yah a list based on that".colorize(:yellow)
# end
#
# def list_stations
#   Station.all.name
#   station_start = gets.chomp
#   Station.all.select do |station|
#
#     if station.name[0] === station_start
#       puts "#{station.id} #{station.name}".colorize(:blue)
#
#     puts "would you like to review one of these stations? Y/N?".colorize(:yellow)
#   else
#     puts "sorry, I got nuthin, lets try again"
#     options
#   end
#       end
#
#     # if station.name[0] != station_start
#     #    puts "sorry, I got nuthin, try again, just one word or letter will work".colorize(:yellow)
#     #    options
#     # end
#
# end
#
#
#
#
#
#
# def run
#   # a = Artii::Base.new :font => 'big'
#   # puts a.asciify("aaay yo- rate  it!  🚛").colorize(:yellow).colorize( :background => :black)
# greet
# options_opens
#
#   # if get_choice.to_i == 1
#   #   list_stations_prompt
#   #   list_stations
#   #
#   # end
#  get_user_review
# binding.pry
# end
#


# def list_stations
#   puts "ah right, how you gonna review a station if you dont know the station?"
#   puts "we've got a lot here, so why dont you tell me the first number or letter "
#   puts "of the station and I'll give yah a list based on that"
#   Station.all.name
#   station_start = gets.chomp
#   Station.all.select do |station|
#
#     if station.name[0] === station_start
#       puts "#{station.id} #{station.name}"
#     end
#   end
# end
# list_stations
# end


class CommandLineInterface

  def greet
    puts "hey yo, hows it hangin?".colorize(:yellow)
    puts "welcome to the station rater".colorize(:yellow)
    puts "this is the spot yous guys can rate".colorize(:yellow)
    puts "and comment on the beee-utiful stations".colorize(:yellow)
    puts "here in New York City".colorize(:yellow)
  end

def prompt_for_user_name
  puts "First of all- lets get to know eachother- whats yah name?".colorize(:yellow)
end

def user_make_or_find(u_name)
  @current_user = User.find_or_create_by(name:u_name)
end

 def options_prompt
   puts "Ok #{@current_user.name}, whatcha wanna do?".colorize(:yellow)
 end


 def list_stations_prompt
   puts "ah right, how you gonna review a station if you dont know the station?".colorize(:yellow)
   puts "we've got a lot here, so why dont you tell me the first number or letter ".colorize(:yellow)
   puts "of the station and I'll give yah a list based on that".colorize(:yellow)
 end


 def options
   puts "TYPE 1 to:".colorize(:white)+" See A Lits Of Stations".colorize(:blue)
   puts "TYPE 2 to:".colorize(:white)+" Review A Station".colorize(:blue)
   puts "TYPE 3 to".colorize(:white)+" View Your Reviews".colorize(:blue)
   puts "TYPE 4 to".colorize(:white)+" Change or Delete Your Review".colorize(:blue)
   user_choice = gets.chomp.to_i
   # binding.pry
     case user_choice
     when 1
       list_stations_prompt
       station_start = gets.chomp.upcase
       Station.list_stations(station_start)

       options

     when 2
       Review.create_one(@current_user)
       puts "Nicely done"
       options
     when 3
       @current_user.get_user_review
       options

     when 4
       @current_user.update

     end



end






def run
greet
prompt_for_user_name
# seperate the make and create later to ensure people with the same name dont share reviews. for now MVP find_create will do
user_make_or_find(u_name = gets.chomp)
options_prompt
options
puts @current_user.name.colorize(:red)
binding.pry
end

end
