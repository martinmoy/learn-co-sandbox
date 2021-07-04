class NbaTeams::Player
  attr_accessor :name, :team, :stats, :url 
  
  @@all = []
  
  def initialize(name, team, url)
    @name = name
    @team = team
    @url = url
    save
  end
  
  def self.all 
    @@all
  end
  
  def team 
    self.team.name
  end 
  
  def save
    @@all << self
  end
  
  def points 
  end 
  
  def assists
  end
  
  def rebounds 
  end
  
  def height
  end
  
  def weight
  end
  
  def age 
  end
  
  def doc 
    @doc ||= Nokogiri::HTML(open(self.url))
  end
  
  
  
  
  
end