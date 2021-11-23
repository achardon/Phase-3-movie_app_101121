

def initialize_app 
    menu
    # tickets = [{name:'rose', movie:'2001: A Space Odyssey', price:5.00},{name:'ix', movie:'The Godfather', price:5.00}]
end 

def menu
    puts "Welcome to Flatiron Movies"
    puts "Please choose an option:"
    puts "1. List all Movies"
    puts "2. List Tickte holder names"
    puts "3. Add ticket"
    puts "0. to exit"
    
    user_input = gets.strip

    case user_input
    when "1"
        movies = ['2001: A Space Odyssey', 'The Godfather', 'Citizen Kane', 'Raiders of the Lost Ark', 'In the mood for love', 'Seven Samurai']

        movies.each {|movie| puts movie }
    when "2"
       puts Ticket.all.map {|ticket| ticket.name }
    when "3"
        puts create_ticket
    else 
        puts "goodbye"
    end 
end

def create_ticket
    puts "Name"
    name = gets.strip
    puts "Title"
    title = gets.strip
    t1 = Ticket.new(name, title)
    menu
end 
