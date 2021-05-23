# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#


require 'uri'
require 'net/http'
require 'openssl'

ENV["RAPID_KEY"]

Reservation.destroy_all
Hotel.destroy_all
Traveler.destroy_all




    traveler1 = Traveler.create(name: 'Hanna', email: 'Hanna@gmail.com', age: '25', password_digest: '123')

    url = URI("https://hotels4.p.rapidapi.com/properties/list?adults1=1&pageNumber=1&destinationId=1506246&pageSize=25&checkOut=2021-07-12&checkIn=2021-07-13&starRatings=3%2C4%2C5&sortOrder=PRICE&locale=en_US&currency=USD")


    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    request["x-rapidapi-key"] = "#{ENV["RAPID_KEY"]}"
    request["x-rapidapi-host"] = 'hotels4.p.rapidapi.com'

    response = http.request(request)
    hotels= JSON.parse(response.read_body)["data"]["body"]["searchResults"]["results"]

     hotels.each do|hotel|
        Hotel.create(
            name: hotel["name"], 
            image: hotel["optimizedThumbUrls"]["srpDesktop"], 
            location: "New York",
            address: hotel["address"]["streetAddress"],
            propid: hotel["id"],
            rating: hotel["starRating"],
            price: rand(100..350),
            neighbourhood: hotel["neighbourhood"],
            distance: hotel["landmarks"][1]["distance"]
        )
     end
        
    res1 = Reservation.create(check_in: '2021-06-21', check_out: '2021-06-23', no_of_night: 2, no_of_room: 1, cancelation_policy: 'Free', traveler_id: traveler1.id, hotel_id: Hotel.all.sample.id, total: 200.50)

    reviews = Review.create([
        {
            title: 'Great Hotel',
            description: "I had a lovely time",
            score: 5,
            hotel_id: Hotel.all.sample.id,
            traveler_id: traveler1.id

        },

        {
            title: 'Bad Hotel',
            description: "I had a bad time",
            score: 1,
            hotel_id: Hotel.all.sample.id,
            traveler_id: traveler1.id
        }

    ])



   