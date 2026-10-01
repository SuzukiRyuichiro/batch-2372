require 'date'
# Write a method which returns the number of days until next Xmas.
# name can be anything

def days_xmas
  # Get the date for today
  today = Date.today
  # Get the date for the next xmas
  xmas_date = Date.new(today.year, 12, 25)

  # check if today is later than xmas date
  if today > xmas_date
    # if that's the case, update the xmas date to the next xmas
    xmas_date = Date.new(today.year + 1, 12, 25)
  end

  # subtract "today" from "xmas" --> this returns (rational)
  # turn them into an integer
  (xmas_date - today).to_i
end

# Make a "fake" test

# Checking if the method actually returns the days until xmas
actual = days_xmas
expected = 364
puts actual == expected

# Check if the returning value is actually integer?
puts actual.class == Integer
