class NYCFlightDeals::CLI

  def call
    list_deals
    menu
    goodbye
  end

  def list_deals
    puts "===== Today's Flight Deals ====="
    puts ""
    @deals = NYCFlightDeals::Deal.recent
    @deals.each.with_index(1) do |deal, i|
      puts "#{i}. #{deal.description}"
    end
    puts ""
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the flight you want more info on. Type 'list' to see deals again, or type 'exit' to exit."
      input = gets.strip.downcase

      if input.to_i > 0
        flight_deal = @deals[input.to_i - 1]
        
        puts "===== Fare Availability ====="
        puts "#{flight_deal.dates}"
        puts ""
        puts "===== How to Search for Availability ====="
        puts "#{flight_deal.search}"
        puts "test below"
        puts "#{flight_deal.stopover}"
        # puts "===== Routing ====="
        # puts "#{flight_deal.route}"
        # puts ""
        # puts "===== Stopovers ====="
        # puts "#{flight_deal.stopover}"
        puts ""
      elsif input == "list"
        list_deals
      elsif input != "exit"
        puts "Sorry, invalid response."
      end
    end
  end

  def goodbye
    puts "Check back later for more deals. Bye!"
  end

end