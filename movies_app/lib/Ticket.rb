class Ticket
    @@all = []
    attr_accessor :name, :title, :price
    def initialize(name, title)
        @name = name
        @title = title
        @price = 5.00
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_tickets(movie)
        @@all.filter {|t| t.title == movie}.map {|t| "Name:#{t.name}, Price: #{t.price}"}
    end

    def print_ticket
        puts "Name: #{@name}"
        puts "Movie: #{@title}"
        puts "Price: #{@price}"
        puts "------------------"
    end

    def discount
        @price = @price/2
        self.print_ticket
    end
end
