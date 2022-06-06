class Book

  attr_accessor :title, :author, :publication_year
    def initialize(info)
      @title = info[:title]
      @author = info[:author_first_name] + " " + info[:author_last_name]
      @publication_date = info[:publication_date]
    end

    def publication_year
      @publication_date.gsub("July 11, 1960","1960")
    end







end #----------------this is the end of the Class---------------
