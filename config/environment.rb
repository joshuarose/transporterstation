# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

Time::DATE_FORMATS[:short_time] = "%I:%M %p"
Date::DATE_FORMATS[:short_date] = "%B %e, %Y"
