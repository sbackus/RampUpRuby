#Examples of Nokogiri use to parse documents

require 'Nokogiri' #get nokogiri gem
require 'open-uri'#get gem to open websites

#This line puts the website text into the variable "doc"
doc = Nokogiri::HTML(open("http://www.startupinstitute.com/"))
#puts doc

#Now we will count the <div> tags
div = doc.css("div")
puts div