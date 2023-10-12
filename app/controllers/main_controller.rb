require 'nokogiri'
require 'open-uri'

class MainController < ApplicationController

  def divide_by_zero
    # Log a message
    Rails.logger.info("About to divide by 0")

    # Raise the exception
    result = 5 / 0 # This will raise a ZeroDivisionError
  end
  def index
    
        # Scrape New York Times headlines
        nytimes_url = 'https://www.nytimes.com'
        nytimes_doc = Nokogiri::HTML(URI.open(nytimes_url))
        nytimes_headlines = nytimes_doc.css('a[href*="/world/"]')
    
        # Scrape Bangkok Post headlines
        bangkokpost_url = 'https://www.bangkokpost.com'
        bangkokpost_doc = Nokogiri::HTML(URI.open(bangkokpost_url))
        bangkokpost_headlines = bangkokpost_doc.css('a[href*="/thailand/"]')
    
        render 'main/index', locals: {
          nytimes_headlines: nytimes_headlines,
          bangkokpost_headlines: bangkokpost_headlines
        }
  end

  

end

