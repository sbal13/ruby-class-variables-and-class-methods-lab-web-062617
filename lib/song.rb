class Song

	@@count = 0
	@@artists= []
	@@genres= []

	attr_accessor :name, :artist, :genre

	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre

		@@artists<< artist
		@@genres << genre

		@@count += 1
	end

	def self.count
		@@count
	end

	def self.genres
		@@genres.uniq
	end

	def self.artists
		@@artists.uniq
	end

	def self.genre_count
		g_hash = {}
		@@genres.each {|genre| g_hash[genre] = @@genres.count(genre)}
		g_hash
	end

	def self.artist_count
		a_hash = {}
		@@artists.each {|artist| a_hash[artist] = @@artists.count(artist)}
		a_hash
	end


end