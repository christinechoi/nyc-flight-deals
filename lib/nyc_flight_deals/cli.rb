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
  end

  def menu
    puts "Enter the number of the flight you want more info on, or type 'exit' to exit."
    while input != "exit"

    input = gets.strip.downcase

      case input 
      when "1"
        puts "More info on flight 1..."
      when "2"
        puts "More info on flight 2..."
      end
    end
  end

  def goodbye
    puts "Check back later for more deals. Bye!"
  end

end