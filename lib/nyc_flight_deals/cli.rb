class NYCFlightDeals::CLI

  def call
    puts "Today's Flight Deals:"
    list_deals
    menu
  end

  def list_deals
    puts <<-DOC
      1. American - $211: Phoenix - New York (and vice versa). RT including all Taxes
      2. American - $165: New York - Denver (and vice versa). RT including all taxes
    DOC
  end

  def menu
    puts "Enter the number of the flight you want more info on:"
  end

end