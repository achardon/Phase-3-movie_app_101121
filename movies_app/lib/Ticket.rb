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
end
