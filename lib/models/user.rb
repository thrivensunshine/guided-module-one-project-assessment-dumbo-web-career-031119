
class User < ActiveRecord::Base
  has_many :reviews
  has_many :stations, through: :reviews


  def get_user_review
    check_arr = []
  Review.all.select do|i|
   if i.user_id == self.id

  puts "
  Review Number:#{i.id} STATION: #{i.station.name} RATING: #{i.rating}
  ".colorize(:pink)
    end
    end
  end

  def check
    puts "#{self.name}"
  end
end
