class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    song.save
    song
  end

  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = self.new
    song.name = name
    song.save
    song
  end

  def self.find_by_name(name)
    @@all.select{|song| song.name == name}[0]
  end

  def self.find_or_create_by_name(name)

    if @@all.select{|song| song.name == name}
      song_out = @@all.select{|song| song.name == name}[0].name
    else
      song_out = self.create_by_name(name)
    end
    song_out
  end
end
