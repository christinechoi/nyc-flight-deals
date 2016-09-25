class NYCFlightDeals::Deal
  attr_accessor :description, :price, :url
  def self.recent #return instances of flight deals
   
    #scrape flight deal site and return data
    self.scrape_deals

  end

  def self.scrape_deals

    flight_1 = self.new 
    flight_1.description = "American - $211: Phoenix - New York (and vice versa). RT including all Taxes"
    flight_1.price = "$211"
    flight_1.url = "http://www.theflightdeal.com/2016/09/24/american-211-phoenix-new-york-and-vice-versa-roundtrip-including-all-taxes/"

    flight_2 = self.new
    flight_2.description = "American - $165: New York - Denver (and vice versa). RT including all taxes"
    flight_2.price = "$165"
    flight_2.url = "http://www.theflightdeal.com/2016/09/24/american-165-new-york-denver-and-vice-versa-roundtrip-including-all-taxes/"
    
    [flight_1, flight_2]
  end

end