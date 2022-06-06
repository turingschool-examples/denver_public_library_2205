module Helpable
  def author
    @author_first_name + ' ' + @author_last_name
  end

  def publication_year
    @publication_date.split(', ').last
  end
end
