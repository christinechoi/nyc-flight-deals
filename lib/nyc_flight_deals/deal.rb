class NYCFlightDeals::Deal

  def self.recent #return instances of flight deals
    puts <<-DOC
      1. American - $211: Phoenix - New York (and vice versa). RT including all Taxes
      2. American - $165: New York - Denver (and vice versa). RT including all taxes
    DOC
  end

end