class NYCFlightDeals::CLI

  def call
    list_deals
    menu
    goodbye
  end

  def list_deals
    puts "Today's Flight Deals:"
    puts <<-DOC
      1. American - $211: Phoenix - New York (and vice versa). RT including all Taxes
      2. American - $165: New York - Denver (and vice versa). RT including all taxes
    DOC
    @deals = NYCFlightDeals::Deal.recent
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the flight you want more info on. Type 'list' to see deals again, or type 'exit' to exit."
      input = gets.strip.downcase

      case input 
      when "list"
        list_deals
      when "1"
        puts "More info on flight 1..."
      when "2"
        puts "More info on flight 2..."
      else
        puts "Sorry, invalid response."
      end
    end
  end

  def goodbye
    puts "Check back later for more deals. Bye!"
  end

end