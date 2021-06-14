# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#


require 'uri'
require 'net/http'
require 'openssl'

ENV["RAPID_KEY"]

Review.destroy_all
Reservation.destroy_all
Hotel.destroy_all
Traveler.destroy_all




    traveler1 = Traveler.create(name: 'Hanna', email: 'Hanna@gmail.com', age: '25', password: '123456')

    url = URI("https://hotels4.p.rapidapi.com/properties/list?adults1=1&pageNumber=1&destinationId=1506246&pageSize=12&checkOut=2021-07-01&checkIn=2021-07-10&starRatings=5&sortOrder=PRICE&locale=en_US&currency=USD")

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
            latitude: hotel["coordinate"]["lat"],
            longitude: hotel["coordinate"]["lon"],
            propid: hotel["id"],
            rating: hotel["starRating"],
            guest_reviews: hotel["guestReviews"]["total"],
            guest_rating: hotel["guestReviews"]["unformattedRating"],
            price: hotel["ratePlan"]["price"]["exactCurrent"],
            neighbourhood: hotel["neighbourhood"],
            distance: hotel["landmarks"][1]["distance"]
        )
     end

     url = URI("https://hotels4.p.rapidapi.com/properties/list?adults1=1&pageNumber=1&destinationId=1535616&pageSize=12&checkOut=2021-07-01&checkIn=2021-07-10&starRatings=4&sortOrder=PRICE&locale=en_US&currency=USD")

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
            latitude: hotel["coordinate"]["lat"],
            longitude: hotel["coordinate"]["lon"],
            propid: hotel["id"],
            rating: hotel["starRating"],
            guest_reviews: hotel["guestReviews"]["total"],
            guest_rating: hotel["guestReviews"]["unformattedRating"],
            price: hotel["ratePlan"]["price"]["exactCurrent"],
            neighbourhood: hotel["neighbourhood"],
            distance: hotel["landmarks"][1]["distance"]
        )
     end

     url = URI("https://hotels4.p.rapidapi.com/properties/list?adults1=1&pageNumber=1&destinationId=1535616&pageSize=12&checkOut=2021-07-01&checkIn=2021-07-10&starRatings=3&sortOrder=PRICE&locale=en_US&currency=USD")

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
             latitude: hotel["coordinate"]["lat"],
             longitude: hotel["coordinate"]["lon"],
             propid: hotel["id"],
             rating: hotel["starRating"],
             guest_reviews: hotel["guestReviews"]["total"],
             guest_rating: hotel["guestReviews"]["unformattedRating"],
             price: hotel["ratePlan"]["price"]["exactCurrent"],
             neighbourhood: hotel["neighbourhood"],
             distance: hotel["landmarks"][1]["distance"]
         )
      end


     url = URI("https://hotels4.p.rapidapi.com/properties/list?adults1=1&pageNumber=1&destinationId=1661225&pageSize=12&checkOut=2021-07-10&checkIn=2021-07-15&starRatings=3&sortOrder=PRICE&locale=en_US&currency=USD")

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
            location: "Washington DC",
            address: hotel["address"]["streetAddress"],
            latitude: hotel["coordinate"]["lat"],
            longitude: hotel["coordinate"]["lon"],
            propid: hotel["id"],
            rating: hotel["starRating"],
            guest_reviews: hotel["guestReviews"]["total"],
            guest_rating: hotel["guestReviews"]["unformattedRating"],
            price: hotel["ratePlan"]["price"]["exactCurrent"],
            neighbourhood: hotel["neighbourhood"],
            distance: hotel["landmarks"][1]["distance"]
        )
     end

     
url = URI("https://hotels4.p.rapidapi.com/properties/list?adults1=1&pageNumber=1&destinationId=1661225&pageSize=6&checkOut=2021-07-10&checkIn=2021-07-15&starRatings=5&sortOrder=PRICE&locale=en_US&currency=USD")

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
            location: "Washington DC",
            address: hotel["address"]["streetAddress"],
            latitude: hotel["coordinate"]["lat"],
            longitude: hotel["coordinate"]["lon"],
            propid: hotel["id"],
            rating: hotel["starRating"],
            guest_reviews: hotel["guestReviews"]["total"],
            guest_rating: hotel["guestReviews"]["unformattedRating"],
            price: hotel["ratePlan"]["price"]["exactCurrent"],
            neighbourhood: hotel["neighbourhood"],
            distance: hotel["landmarks"][1]["distance"]
        )
     end

     url = URI("https://hotels4.p.rapidapi.com/properties/list?adults1=1&pageNumber=1&destinationId=1661225&pageSize=12&checkOut=2021-07-01&checkIn=2021-07-10&starRatings=4&sortOrder=PRICE&locale=en_US&currency=USD")


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
            location: "Washington DC",
            address: hotel["address"]["streetAddress"],
            latitude: hotel["coordinate"]["lat"],
            longitude: hotel["coordinate"]["lon"],
            propid: hotel["id"],
            rating: hotel["starRating"],
            guest_reviews: hotel["guestReviews"]["total"],
            guest_rating: hotel["guestReviews"]["unformattedRating"],
            price: hotel["ratePlan"]["price"]["exactCurrent"],
            neighbourhood: hotel["neighbourhood"],
            distance: hotel["landmarks"][1]["distance"]
        )
     end

    url = URI("https://hotels4.p.rapidapi.com/properties/list?adults1=1&pageNumber=1&destinationId=1405364&pageSize=9&checkOut=2021-07-01&checkIn=2021-07-10&starRatings=5&sortOrder=PRICE&locale=en_US&currency=USD")

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
            location: "Texas",
            address: hotel["address"]["streetAddress"],
            latitude: hotel["coordinate"]["lat"],
            longitude: hotel["coordinate"]["lon"],
            propid: hotel["id"],
            rating: hotel["starRating"],
            guest_reviews: hotel["guestReviews"]["total"],
            guest_rating: hotel["guestReviews"]["unformattedRating"],
            price: hotel["ratePlan"]["price"]["exactCurrent"],
            neighbourhood: hotel["neighbourhood"],
            distance: hotel["landmarks"][1]["distance"]
        )
     end

     url = URI("https://hotels4.p.rapidapi.com/properties/list?adults1=1&pageNumber=1&destinationId=1405364&pageSize=6&checkOut=2021-07-01&checkIn=2021-07-10&starRatings=3&sortOrder=PRICE&locale=en_US&currency=USD")

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
            location: "Texas",
            address: hotel["address"]["streetAddress"],
            latitude: hotel["coordinate"]["lat"],
            longitude: hotel["coordinate"]["lon"],
            propid: hotel["id"],
            rating: hotel["starRating"],
            guest_reviews: hotel["guestReviews"]["total"],
            guest_rating: hotel["guestReviews"]["unformattedRating"],
            price: hotel["ratePlan"]["price"]["exactCurrent"],
            neighbourhood: hotel["neighbourhood"],
            distance: hotel["landmarks"][1]["distance"]
        )
     end

     url = URI("https://hotels4.p.rapidapi.com/properties/list?adults1=1&pageNumber=1&destinationId=1481165&pageSize=6&checkOut=2021-07-10&checkIn=2021-07-01&starRatings=5&sortOrder=PRICE&locale=en_US&currency=USD")

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
            location: "Seattle",
            address: hotel["address"]["streetAddress"],
            latitude: hotel["coordinate"]["lat"],
            longitude: hotel["coordinate"]["lon"],
            propid: hotel["id"],
            rating: hotel["starRating"],
            guest_reviews: hotel["guestReviews"]["total"],
            guest_rating: hotel["guestReviews"]["unformattedRating"],
            price: hotel["ratePlan"]["price"]["exactCurrent"],
            neighbourhood: hotel["neighbourhood"],
            distance: hotel["landmarks"][1]["distance"]
        )
     end
      
     url = URI("https://hotels4.p.rapidapi.com/properties/list?adults1=1&pageNumber=1&destinationId=1481165&pageSize=12&checkOut=2021-07-01&checkIn=2021-07-10&starRatings=4&sortOrder=PRICE&locale=en_US&currency=USD")

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
            location: "Seattle",
            address: hotel["address"]["streetAddress"],
            latitude: hotel["coordinate"]["lat"],
            longitude: hotel["coordinate"]["lon"],
            propid: hotel["id"],
            rating: hotel["starRating"],
            guest_reviews: hotel["guestReviews"]["total"],
            guest_rating: hotel["guestReviews"]["unformattedRating"],
            price: hotel["ratePlan"]["price"]["exactCurrent"],
            neighbourhood: hotel["neighbourhood"],
            distance: hotel["landmarks"][1]["distance"]
        )
     end

     url = URI("https://hotels4.p.rapidapi.com/properties/list?adults1=1&pageNumber=1&destinationId=1520387&pageSize=12&checkOut=2021-07-10&checkIn=2021-07-01&starRatings=5&sortOrder=PRICE&locale=en_US&currency=USD")

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
            location: "Denver",
            address: hotel["address"]["streetAddress"],
            latitude: hotel["coordinate"]["lat"],
            longitude: hotel["coordinate"]["lon"],
            propid: hotel["id"],
            rating: hotel["starRating"],
            guest_reviews: hotel["guestReviews"]["total"],
            guest_rating: hotel["guestReviews"]["unformattedRating"],
            price: hotel["ratePlan"]["price"]["exactCurrent"],
            neighbourhood: hotel["neighbourhood"],
            distance: hotel["landmarks"][1]["distance"]
        )
     end

    url = URI("https://hotels4.p.rapidapi.com/properties/list?adults1=1&pageNumber=1&destinationId=1520387&pageSize=12&checkOut=2021-07-01&checkIn=2021-07-10&starRatings=4&sortOrder=PRICE&locale=en_US&currency=USD")

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
            location: "Denver",
            address: hotel["address"]["streetAddress"],
            latitude: hotel["coordinate"]["lat"],
            longitude: hotel["coordinate"]["lon"],
            propid: hotel["id"],
            rating: hotel["starRating"],
            guest_reviews: hotel["guestReviews"]["total"],
            guest_rating: hotel["guestReviews"]["unformattedRating"],
            price: hotel["ratePlan"]["price"]["exactCurrent"],
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

Tour1 = Tour.create(name: "Statue of Liberty", description: "A universal symbol of freedom, the Statue of Liberty is the most familiar icon and the largest statue in the world.", timage: "https://www.planetware.com/photos-large/US/new-york-statue-of-liberty-2.jpg", location: "New York", tprice: 10, video: 'https://www.youtube.com/embed/kOAS3bmtSAM')
Tour2 = Tour.create(name: "Smithsonian National Zoological Park", description: "Founded in 1889, its mission is to provide engaging experiences with animals and create and share knowledge to save wildlife and habitats", timage: "https://www.si.edu/sites/default/files/newsdesk/building/nzp.jpg", location: "Washington DC", tprice: 4.99, video: 'https://www.youtube.com/embed/RYBQHl0WjRM' )
Tour3 = Tour.create(name: "Washington Monument", description: "The Washington Monument is an obelisk within the National Mall in Washington, D.C., built to commemorate George Washington", timage: "https://www.trolleytours.com/wp-content/uploads/2016/06/washington-monument.jpg", location: "Washington Dc", tprice: 6.99,  video: 'https://www.youtube.com/embed/EAt8vA6UpNE')
Tour4 = Tour.create(name: "National Gallery of Art", description: "The National Gallery of Art serves the nation by welcoming all people to explore and experience art, creativity, and our shared humanity", timage: "https://washington-org.s3.amazonaws.com/s3fs-public/jasmine.huang_courtyard-at-the-national-gallery-of-art-east-building_yesmydccool.jpg", location: "Washington Dc", tprice: 4.99,  video: 'https://www.youtube.com/embed/rZWG7eVFVGM')
Tour5 = Tour.create(name: "Central Park", description: "Central Park is an urban park in New York City located between the Upper West and Upper East Sides of Manhattan. It is the fifth-largest park in the city by area, covering 843 acres", timage: "https://www.planetware.com/photos-large/USNY/new-york-city-central-park-1.jpg", location: "New York", tprice: 3.99, video: 'https://www.youtube.com/embed/9GJD8bhFeaE' )
Tour6 = Tour.create(name: "Fort Tryon Park", description: "Fort Tryon Park is a public park located in the Hudson Heights and Inwood neighborhoods of the borough of Manhattan in New York City. The 67-acre park is situated on a ridge in Upper Manhattan, close to the Hudson River to the west", timage: "https://st4.depositphotos.com/1031967/22426/i/1600/depositphotos_224262332-stock-photo-scenic-view-fort-tryon-park.jpg", location: "New York", tprice: 6.99,  video: 'https://www.youtube.com/embed/L6YclBK6lH0' )
Tour7 = Tour.create(name: "KENILWORTH PARK AND AQUATIC GARDEN", description: "Part of Anacostia Park. Located along the east bank of the Anacostia River, this beautiful spot is filled with hiking trails and boardwalks enticing visitors year round.", timage: "http://www.trolleytours.com/wp-content/uploads/2017/09/kenilworth-park.jpg", location: "Washington DC", tprice: 6.99,  video: 'https://www.youtube.com/embed/sPHJ5F4Oxcw')
Tour8 = Tour.create(name: "THE YARDS PARK", description: "A waterfront park with a boardwalk running along the Anacostia River. Home to well-known ‘outdoor rooms,’ visitors to this park can wander near the dancing fountains at the entrance that welcome visitors to this special space.", timage: "https://ctycms.com/dc-capitol-riverfront/images/ypt1-dancing-fountains.jpg", location: "Washington Dc", tprice: 7.99, video: 'https://www.youtube.com/embed/yOcqjnq7NtY')
Tour9 = Tour.create(name: "Abraham Lincoln Memorial", description: "The Abraham Lincoln Memorial is the 5th most visited National Park Service site in the country. In fact, over 7 million people visit the memorial annually.", timage: "https://content.tripster.com/travelguide/wp-content/uploads/2019/07/lincoln-memorial-1746358_1920.jpg", location: "Washington Dc", tprice: 7.99, video: 'https://www.youtube.com/embed/TbQk6c79XNI')
Tour10 = Tour.create(name: "White House", description: "Obviously, the White House ranks high as one of the top Washington DC landmarks you’ve got to see during your trip.", timage: "https://yt3.ggpht.com/ytc/AAUvwnjZ_JQT0jeXSxrC5sE_2VKvRaosQBQUC5zm50fh=s900-c-k-c0x00ffffff-no-rj", location: "Washington Dc", tprice: 7.99, video: 'https://www.youtube.com/embed/U1JCy5rU_3s')
Tour11 = Tour.create(name: "Thomas Jefferson Memorial", description: "The Thomas Jefferson Memorial is one of the most iconic Washington DC landmarks. Modeled after the Pantheon in Rom, this outstanding piece of architecture serves as a symbol of liberty.", timage: "https://content.tripster.com/travelguide/wp-content/uploads/2019/07/Jefferson-Memorial-cherry-blossoms-663578_1920.jpg", location: "Washington Dc", tprice: 8.99,  video: 'https://www.youtube.com/embed/oPhDUNN0-Mg')
Tour12 = Tour.create(name: "United States Capitol", description: "Serving as the home of the Senate and House of Representatives, the U.S. Capitol building is not only architecturally impressive but a symbol of American democracy the world over.", timage: "https://afar-production.imgix.net/uploads/images/post_images/images/bc38jVj5NU/original_open-uri20131024-6181-6f55oj?1383832018?ixlib=rails-0.3.0&auto=format%2Ccompress&crop=entropy&fit=crop&h=719&q=80&w=954", location: "Washington Dc", tprice: 7.99, video: 'https://www.youtube.com/embed/qvgq1awXNzs')
Tour13 = Tour.create(name: "Radio City Music Hall", description: "Stemming from a legendary venue widely known as “The World’s Most Famous Arena,” today MSG includes a mix of renowned venues that span four of the nation’s largest entertainment markets.", timage: "https://www.newyorkbyrail.com/wp-content/uploads/2018/05/Radio-City-Music-Hall-1200x650.jpg", location: "New York", tprice: 10.99, video: 'https://www.youtube.com/embed/z4d0c_jVs04')
Tour14 = Tour.create(name: "Lincoln Center for the Performing Arts", description: "Learn more about Lincoln Center’s iconic landmarks—including the Revson Fountain, the newly transformed Alice Tully Hall, and the Metropolitan Opera House!Go behind the scenes at venues where a spectacular range of artists have performed, including Luciano Pavarotti, Mikhail Baryshnikov, Leonard Bernstein, Renée Fleming, and Bruce Springsteen.", timage: "https://www.walksofnewyork.com/blog/wp-content/uploads/2012/04/lincoln-center-theater-nyc-night-credit-spirit-of-america-600x400.jpg", location: "New York", tprice: 15.99, video: "https://www.youtube.com/embed/fGj7ww1GRG8" )
Tour15 = Tour.create(name: "National Theatre DC", description: "SThe National Theatre is located in Washington, D.C., and functions as a venue for live stage productions with seating for 1,676. Despite its name, it is not a governmentally funded national theatre, but operated by a private, non-profit organization", timage: "https://s3.amazonaws.com/ocn-media/6778d14b-42cd-48c0-9ab2-29b48a621a3f.jpg", location: "Washington Dc", tprice: 10.99, video: 'https://www.youtube.com/embed/Kyj_Ah6QOiU')
Tour16 = Tour.create(name: "Virginia Beach", description: "For a longer beach getaway, D.C. locals should head to Virginia Beach, Virginia. This charming beach town has plenty to offer a wide variety of travelers, from families to college coeds", timage: "https://i0.wp.com/files.tripstodiscover.com/files/2017/10/bigstock-Beach-Vacation-1989793.jpg?resize=1568%2c1176", location: "Virginia VA", tprice: 7.99, video: 'https://www.youtube.com/embed/BOzKYNR9cHE')
Tour17 = Tour.create(name: "Long Beach", description: "Long Beach is a city in New York found in the Long Beach Barrier Island. It is surrounded by the Reynolds Channel and the Atlantic Ocean.", timage: "https://i0.wp.com/files.tripstodiscover.com/files/2017/10/bigstock-Beach-Vacation-1989793.jpg?resize=1568%2c1176", location: "New York", tprice: 10.99, video:'https://www.youtube.com/embed/Jk6lZ-raPCY')
Tour18 = Tour.create(name: "Rockaway Beach — Queens", description: "FRockaway Beach can be found in Queens, between Rockaway Park and Arverne. It is considered by many as the best beach for swimming in NYC.", timage: "https://nitrocdn.com/nrySoMTdLOiwYcExRRERttMDYewwmJKN/assets/static/optimized/rev-7e3c179/wp-content/uploads/2021/01/Rockaway-Beach-%E2%80%94-Queens.jpg", location: "New York", tprice: 10.99,   video: 'https://www.youtube.com/embed/KSbY7E0t5hc' )
Tour19 = Tour.create(name: "Coney Island — Brooklyn", description: "Coney Island in Brooklyn is known for its vibrant and fun amusement park right beside the beach. It has been a seaside amusement park since the late 19th century.", timage: "https://nitrocdn.com/nrySoMTdLOiwYcExRRERttMDYewwmJKN/assets/static/optimized/rev-7e3c179/wp-content/uploads/2021/01/Coney-Island-%E2%80%94-Brooklyn.jpg", location: "New York", tprice: 10.99,  video: 'https://www.youtube.com/embed/nSaBudeW8Ho')
Tour20 = Tour.create(name: "Ocean City", description: "Ocean City, Maryland is a three-hour drive from Washington, D.C, and a popular beach destination for D.C. residents. Many D.C. travelers make the commute to Ocean City for a day trip.", timage: "https://www.gannett-cdn.com/presto/2019/05/26/PSAY/64a5632b-71a5-43bc-bf9d-76a00c76d644-Ocean_City_Memorial_Day_14_of_32.jpg", location: "Maryland MD", tprice: 10.99,  video: 'https://www.youtube.com/embed/NNoGd98gJ_8')
Tour21 = Tour.create(name: "Hop On Hop Off DC Tours by Old Town Trolley", description: "Hop aboard Old Town Trolley and enjoy a fun-filled day of Transportainment! You’ll enjoy a fully-narrated tour of Washington DC while being able to hop on and off as much as you’d like.", timage: "https://www.trolleytours.com/wp-content/uploads/2016/06/washington-dc-trolley-us-capitol-480x270.jpg", location: "Washington DC", tprice: 55.99, video: 'https://www.youtube.com/embed/FOgalJYpTc4' )
Tour22 = Tour.create(name: "New York in One Day Guided Sightseeing Tour", description: "Make the most of your time in the city that never sleeps on a guided tour of NYC’s top Tours. Travel by both boat (seasonal) and bus as you swing by the 9/11 Memorial, Central Park, Rockefeller Center and more.", timage: "https://i.insider.com/5b34edb47e7360a1058b4594?width=1000&format=jpeg&auto=webp", location: "New York", tprice: 30.99,  video: 'https://www.youtube.com/embed/viVEhtR0NqU' )
Tour23 = Tour.create(name: "New York City Harbor Lights Cruise", description: "Experience the lights of New York City at sunset on this twilight cruise along the Hudson River and into New York Harbor.", timage: "https://vamzio.com/wp-content/uploads/2018/08/CircleLine_Midtown_Night-1.jpg", location: "New York", tprice: 41.99, video: 'https://www.youtube.com/embed/KcDLjme8VPE' )
Tour24 = Tour.create(name: "Ground Zero Tour, Memorial and Museum, One World Observatory", description: "In remembrance of the events of September 11, 2001, take this guided tour of Ground Zero and the 9/11 Memorial. Walk through the space of the former World Trade Center in NYC, and get a deeper understanding of the events that took place on that day.", timage: "https://media.tacdn.com/media/attractions-splice-spp-674x446/07/75/6d/fe.jpg", location: "New York", tprice: 50.99,  video: 'https://www.youtube.com/embed/ndeXJVi1jEo')



   