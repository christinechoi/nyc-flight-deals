class NYCFlightDeals::Deal
  attr_accessor :description, :price, :url, :inner, :dates, :search
  def self.recent #return instances of flight deals
   
    #scrape flight deal site and return data
    self.scrape_deals

  end

  def self.scrape_deals
    #go to site, find 3 most recently posted flights
    #extract properties of 3 flights
    #instantiate 3 flights
    flights = []

    flights << self.scrape_first_flight
    flights << self.scrape_second_flight
    flights << self.scrape_third_flight

    flights 
  end

  def self.scrape_first_flight
    doc = Nokogiri::HTML(open("http://www.theflightdeal.com/category/flight-deals/nyc/"))
    
    flight_1 = self.new 

    flight_1.description = doc.css(".entry-content h1 a")[0].text
    flight_1.url = doc.css("div .entry-content h1 a").first.attribute("href").value
    page = Nokogiri::HTML(open("#{flight_1.url}"))
    flight_1.dates = page.search("div .entry-content ul")[2].children.text
    flight_1.search = page.search("div .entry-content ul")[4].children.text

    binding.pry
  end

  def self.scrape_second_flight
    doc = Nokogiri::HTML(open("http://www.theflightdeal.com/category/flight-deals/nyc/"))
    description = doc.css(".entry-content h1 a")[1].text
    url = doc.css("div .entry-content h1 a")[1].attribute("href").value
    binding.pry
  end

  def self.scrape_third_flight
    doc = Nokogiri::HTML(open("http://www.theflightdeal.com/category/flight-deals/nyc/"))
    description = doc.css(".entry-content h1 a")[2].text
    url = doc.css("div .entry-content h1 a")[2].attribute("href").value
    binding.pry
  end


end


# flights = []
#     flight_1 = self.new 
#     flight_1.description = "American - $211: Phoenix - New York (and vice versa). RT including all Taxes"
#     flight_1.price = "$211"
#     flight_1.url = "http://www.theflightdeal.com/2016/09/24/american-211-phoenix-new-york-and-vice-versa-roundtrip-including-all-taxes/"

#     flight_2 = self.new
#     flight_2.description = "American - $165: New York - Denver (and vice versa). RT including all taxes"
#     flight_2.price = "$165"
#     flight_2.url = "http://www.theflightdeal.com/2016/09/24/american-165-new-york-denver-and-vice-versa-roundtrip-including-all-taxes/"
#     