# def greet
#   puts "hey yo, hows it hangin?".colorize(:red)
#   puts "welcome to the station rater".colorize(:red)
#   puts "this is the spot yous guys can rate".colorize(:red)
#   puts "and comment on the beee-utiful stations".colorize(:red)
#   puts "here in New York City".colorize(:red)
#   puts "watch for the rats".colorize(:red)
#
# end

# class CommandLineInterface
#   def greet
#     puts "hey yo, hows it hangin?".colorize(:red)
#     puts "welcome to the station rater".colorize(:red)
#     puts "this is the spot yous guys can rate".colorize(:red)
#     puts "and comment on the beee-utiful stations".colorize(:red)
#     puts "here in New York City".colorize(:red)
#     puts "watch for the rats".colorize(:red)
#
#   end
#
# end
def list_stations
  puts "ah right, how you gonna review a station if you dont know the station?"
  puts "we've got a lot here, so why dont you tell me the first number or letter "
  puts "of the station and I'll give yah a list based on that"
  Station.all.name
  station_start = gets.chomp
  Station.all.select do |station|

    if station.name[0] === station_start
      puts "#{station.id} #{station.name}"
    end
  end
end


def greet
  puts "hey yo, hows it hangin?".colorize(:yellow)
  puts "welcome to the station rater".colorize(:yellow)
  puts "this is the spot yous guys can rate".colorize(:yellow)
  puts "and comment on the beee-utiful stations".colorize(:yellow)
  puts "here in New York City".colorize(:yellow)
end

def options
puts "First of all- lets get to know eachother- whats yah name?".colorize(:yellow)
user_name = gets.chomp
user_name = User.create(name: user_name)
puts "Ok #{user_name.name}, whatcha wanna do?".colorize(:yellow)
puts "TYPE 1 to:".colorize(:white)+" See A Lits Of Stations".colorize(:blue)
puts "TYPE 2 to:".colorize(:white)+" Review A Station".colorize(:blue)
puts "TYPE 3 to:".colorize(:white)+" Leave a Suggestion".colorize(:blue)
puts "TYPE 4 to".colorize(:white)+" View Your Reviews".colorize(:blue)
puts "TYPE 5 to".colorize(:white)+" Change or Delete Your Review".colorize(:blue)

end



def run
  a = Artii::Base.new :font => 'big'
  puts a.asciify("aaay yo- rate  it!  🚛").colorize(:yellow).colorize( :background => :black)
greet
options
pick
end
