class NYCFlightDeals::Deal

  def self.recent #return instances of flight deals
    puts <<-DOC
      1. American - $211: Phoenix - New York (and vice versa). RT including all Taxes
      2. American - $165: New York - Denver (and vice versa). RT including all taxes
    DOC
    flight_1 = Deal.new 
    flight_1.description = "American - $211: Phoenix - New York (and vice versa). RT including all Taxes"
    flight_1.price = "$211"
    flight_1.url = "http://www.theflightdeal.com/2016/09/24/american-211-phoenix-new-york-and-vice-versa-roundtrip-including-all-taxes/"

    flight_2 = Deal.new
    flight_2.description = "American - $165: New York - Denver (and vice versa). RT including all taxes"
    flight_2.price = "$165"
    flight_2.url = "http://www.theflightdeal.com/2016/09/24/american-165-new-york-denver-and-vice-versa-roundtrip-including-all-taxes/"
  end

end