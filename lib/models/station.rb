
require'pry'
class Station < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews

  def self.list_stations(station_search)

    station_search = "#{station_search}%"
    Station.all.where('name LIKE ?', station_search).map do |i|
      puts "---------"
      puts "Station ID Number: #{i.id}"
      puts "Station Name #{i.name}, lines at this staion #{i.line}"
      puts "---------"
    end



  end


  # def self.list_stations(station_start)
  #
  #   self.all.select do |station|
  #     if station.name[0] == station_start
  #       puts "#{station.id} #{station.name}"
  #       puts "#{}"
  #     end
  #   end
  #     # if station.name[0] != station_start
  #     #   puts "Sorry, I got nuthin, try again".colorize(:yellow)
  #     # end
  #   end

  def self.reviews_by_stations
    puts "which station would you like see reviews for? just type
    the station id".colorize(:yellow)
    by_station = gets.chomp.to_i
    Review.all.select do |reviews|
      reviews.station_id == by_station
      puts "--------------------------------------"
      puts "#{reviews.user.name} gave a #{reviews.rating}
      rating and said: #{reviews.comment}
      and sugessted: #{reviews.suggestion}".colorize(:light_magenta)
      puts "--------------------------------------"
    end

  end

  # def self.array_of_station_rating(id_search)
  #
  #   av_by_this_station = Station.find(id_search)
  #   av_by_this_station.reviews.map {|i|i.rating}
  #   end
  def self.array_of_station_rating
    arr = []
    puts "i can give yah an average too if you want".colorize(:yellow)
    puts "whats that station id number again?"
    by_station = gets.chomp.to_i
    av_by_this_station = Station.find(by_station)
    arr = av_by_this_station.reviews.map {|i|i.rating}
    # arr << i.rating
    arr_rate = arr.reduce(:+)/ arr.size
    puts "#{av_by_this_station.name} station has #{arr.size} ratings".colorize(:light_magenta)
    puts "#{av_by_this_station.name} has an average rate of #{arr_rate}".colorize(:light_magenta)
  end




  # ---------

end



# puts "i can give yah an average too if you want".colorize(:yellow)
# puts "whats that station id number again?"
# by_station = gets.chomp.to_i
