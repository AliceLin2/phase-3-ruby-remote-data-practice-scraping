require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(html)
content = doc.css(".heading-financier").text.strip
puts content
courses = doc.css(".heading-35-semibold")
courses.each do |course|
    puts course.text.strip
end

p courses[0].name
p courses[0].attributes
p courses[0].children
