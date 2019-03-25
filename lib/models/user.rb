class User < ActiveRecord::Base
  has_many :reviews
  has_many :stations, through: :reviews




  def check
    puts "#{self.name}"
  end
end
