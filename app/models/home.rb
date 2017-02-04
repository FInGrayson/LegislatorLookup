
class Home < ApplicationRecord
  def self.zip(zip)
    legislators = HTTParty.get("https://congress.api.sunlightfoundation.com/legislators/locate?zip=#{zip}")
  end

  def self.chamber(chamber)
    if chamber == "house"
      "House of Representatives"
    else
      "Senate"
    end
  end
end
