class MainController < ApplicationController
  def index
    begin
    # Generate a divide-by-zero exception
      result = 10 / 0
    rescue => e
      # Log the error
      LogEntry.create(message: "About to divide by 0. Error: #{e.message}")

      # Handle the exception as needed
      flash[:error] = "An error occurred: #{e.message}"
    end
  end
end

