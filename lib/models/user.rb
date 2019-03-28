
class User < ActiveRecord::Base
  has_many :reviews
  has_many :stations, through: :reviews


  def get_user_review
 # for some reason I had to put the if statement- i couldnt get an array returned even though in binding pry I was able to see each one. I will come back to refactor if i get a moment
  Review.all.select do|i|
     if i.user_id === self.id
       
      puts "-----------------------------"
      puts"Review ##{i.id} ".colorize(:pink)
      puts " STATION: #{i.station.name} ".colorize(:pink)
      puts" RATING: #{i.rating}".colorize(:pink)
      puts" COMMENT: #{i.comment}".colorize(:pink)
      puts" SUGGESTION #{i.suggestion}"
      puts "----------------------------- "

      end
    end
  end

end
