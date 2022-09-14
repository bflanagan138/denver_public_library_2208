class Book

    attr_reader :title,
                :author_first_name,
                :author_last_name,
                :publication_date, 
                :author,
                :publication_year

    def initialize(attributes)
        @author_first_name = attributes[:author_first_name]
        @author_last_name = attributes[:author_last_name]
        @publication_date = attributes[:publication_date]
        @author = "#{author_first_name} #{author_last_name}" 
        @title = attributes[:title]
    end

    def publication_year
        @publication_date.split(", ").pop
    end
end