class Show < ActiveRecord::Base 
  def self.highest_rating 
    Show.maximum("rating")
  end

  def self.most_popular_show 
    Show.where("rating = ?", self.highest_rating)[0]
  end

  def self.lowest_rating 
    Show.minimum("rating")
  end
end
