class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create("name")
    # self.new.save
    # self
    song = self.new
    song.save
    song
  end

end
