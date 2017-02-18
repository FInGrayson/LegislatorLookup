
class Home < ApplicationRecord
  def self.zip(zip)
    legislators = HTTParty.get("https://congress.api.sunlightfoundation.com/legislators/locate?zip=#{zip}")
  end

  def self.bills(id)
    bills = HTTParty.get("https://congress.api.sunlightfoundation.com/bills?sponsor_id__in=#{id}")
  end

  def self.chamber(chamber)
    if chamber == "house"
      "House of Representatives"
    else
      "Senate"
    end
  end
end
