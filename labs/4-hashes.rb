# DON'T CHANGE THIS CODE
# ----------------------
require "net/http"
require "json"
url = "https://api.coindesk.com/v1/bpi/currentprice.json"
uri = URI(url)
response = Net::HTTP.get(uri)
bitcoin_data = JSON.parse(response)
# ----------------------

# To run this code, be sure your current working directory
# is the same as where this file is located and then run:
# ruby 4-hashes.rb

# EXERCISE
# Ask the user for the current amount of Bitcoin that they own.
# Using the Ruby hash `bitcoin_data`, display a summary of
# Bitcoin data for the user. Something like the output below.

# Sample output:
# 1 Bitcoin is valued at $41405.1046 USD.
# Your Bitcoin is worth $62107.6569.

# 0. inspect the bitcoin_data hash
puts bitcoin_data

# 1. Get input from a user using gets.chomp.
puts "How much bitcoin do you have?"
bitcoin_num = gets.chomp
bitcoin_num = bitcoin_num.to_f  #turn the input from string to float
puts "What is the currency? (USD, GBP, EUR)"
currency = gets.chomp

#2. output the total value of bitcoin
bitcoin_rate = bitcoin_data["bpi"][currency]["rate_float"]
puts "Bitcoin rate for #{currency} is: $ #{bitcoin_rate}"
puts "Bitcoin total value: $ #{bitcoin_num * bitcoin_rate.to_f}"