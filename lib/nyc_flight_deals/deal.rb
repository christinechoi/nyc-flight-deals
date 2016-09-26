class NYCFlightDeals::Deal
  attr_accessor :description, :price, :url, :dates, :search, :route, :stopover
  
  def self.recent 
    self.scrape_deals
  end

  def self.scrape_deals
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
    flight_1.search = page.search("div .entry-content ul li")[5].children.text
    flight_1.route = page.search("div .entry-content ul")[9].children.text
    flight_1.stopover = page.search("div .entry-content ul li")[20].children.text

    flight_1
  end

  def self.scrape_second_flight
    doc = Nokogiri::HTML(open("http://www.theflightdeal.com/category/flight-deals/nyc/"))
    
    flight_2 = self.new 
    flight_2.description = doc.css(".entry-content h1 a")[1].text
    flight_2.url = doc.css("div .entry-content h1 a").first.attribute("href").value
    page = Nokogiri::HTML(open("#{flight_2.url}"))
    flight_2.dates = page.search("div .entry-content ul")[2].children.text
    flight_2.search = page.search("div .entry-content ul li")[5].children.text
    flight_2.route = page.search("div .entry-content ul")[9].children.text
    flight_2.stopover = page.search("div .entry-content ul li")[20].children.text

    flight_2
  end

  def self.scrape_third_flight
    doc = Nokogiri::HTML(open("http://www.theflightdeal.com/category/flight-deals/nyc/"))
    
    flight_3 = self.new 
    flight_3.description = doc.css(".entry-content h1 a")[2].text
    flight_3.url = doc.css("div .entry-content h1 a").first.attribute("href").value
    page = Nokogiri::HTML(open("#{flight_3.url}"))
    flight_3.dates = page.search("div .entry-content ul")[2].children.text
    flight_3.search = page.search("div .entry-content ul li")[5].children.text
    flight_3.route = page.search("div .entry-content ul")[9].children.text
    flight_3.stopover = page.search("div .entry-content ul li")[20].children.text

    flight_3
  end


end