require 'nokogiri'
require 'open-uri'

class HeadlinesController < ApplicationController
  def fetch_headlines
    # Scrape New York Times headlines
    nytimes_url = 'https://www.nytimes.com'
    nytimes_doc = Nokogiri::HTML(URI.open(nytimes_url))
    nytimes_headlines = nytimes_doc.css('a[href*="/world/"]') # Adjust the CSS selector

    # Scrape Bangkok Post headlines
    bangkokpost_url = 'https://www.bangkokpost.com'
    bangkokpost_doc = Nokogiri::HTML(URI.open(bangkokpost_url))
    bangkokpost_headlines = bangkokpost_doc.css('a[href*="/thailand/"]') # Adjust the CSS selector

    render 'headlines/index', locals: {
      nytimes_headlines: nytimes_headlines,
      bangkokpost_headlines: bangkokpost_headlines
    }
  end
end
