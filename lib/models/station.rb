
class Station < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews

  def self.list_stations(station_search)

    station_search = "#{station_search}%"
    Station.all.where('name LIKE ?', station_search).map do |i|
      puts "---------"
      puts "Station Number: #{i.id}"
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
      puts "#{reviews.user.name} rated #{reviews.rating} and said
      #{reviews.comment}"
      # reviews.station_id == self.station_id
      # puts reviews
      # binding.pry
    end

  end


end
