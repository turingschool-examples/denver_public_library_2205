class Library

	attr_reader :name, :books, :authors
	def initialize(name)
		@name = name
		@books = []
		@authors = []
	end

	def add_author(author)
		@authors << author
		author.books.each do |book|
			@books << book
		end
	end

	def publication_time_frame_for(author)
		time_frame = Hash.new
		pub_year_list = author.books.map {|book| book.publication_year}
		pub_year_list.sort!
		time_frame[:start] = pub_year_list.first
		time_frame[:end] = pub_year_list.last
		return time_frame
	end


end
