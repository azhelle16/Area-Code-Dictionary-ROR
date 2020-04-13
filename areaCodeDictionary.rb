dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}
 
# Get city names from the hash
def get_city_names(somehash)
    somehash.each { |cn,ac| puts cn }
end
 
# Get area code based on given hash and key
def get_area_code(somehash, key)
    somehash[key]
end
 
# Execution flow
loop do
    print "\nDo you wish to look-up for area code by city names, (Y/N)? "
    choice = gets.chomp.downcase
    if choice != 'y'
        puts "\nThank you for using the Area Code Look-Up. Have A Nice Day!\n\n"
        break
    else
        puts "\nWhich city do you want the area code for?\n\n"
        get_city_names(dial_book)
        print "\nPlease enter the city name: "
        city = gets.chomp.downcase
        area_code = get_area_code(dial_book,city)
        if area_code == nil || area_code == ""
            print "\nThere is no area code available for #{city}.\n"
        else
            print "\nThe area code for #{city} is #{area_code}.\n"
        end
    end
end