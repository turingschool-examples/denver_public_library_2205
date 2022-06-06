require 'date'
class Book

	attr_reader :title
	def initialize(book_details)
		@author_first_name = book_details[:author_first_name]
		@author_last_name = book_details[:author_last_name]
		@title = book_details[:title]
		@publication_date = book_details[:publication_date]
	end

	def author
		[@author_first_name, @author_last_name].join(' ')
	end

	def publication_year
		if @publication_date.length == 4
			return @publication_date
		else
			date = Date.parse(@publication_date)
			year = date.year.to_s
			return year
		end
	end

end
