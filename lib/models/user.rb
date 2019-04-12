require'pry'
class User < ActiveRecord::Base
  has_many :reviews
  has_many :stations, through: :reviews


  def get_user_review
    puts "remeber the review number if you wanna change or delete it".colorize(:yellow)
     self.reviews.each do |i|
         # binding.pry
      puts "-----------------------------"
      puts"Review Number #{i.id} ".colorize(:pink)
      puts " STATION: #{i.station.name} ".colorize(:pink)
      puts" RATING: #{i.rating}".colorize(:pink)
      puts" COMMENT: #{i.comment}".colorize(:pink)
      puts" SUGGESTION #{i.suggestion}"
      puts "----------------------------- "

    end
  end

  def get_user_testing
    self.reviews.map do |i|

      i.rating
      # binding.pry
    
    end
  end
  # ---------



end
