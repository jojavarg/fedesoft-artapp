# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
15.times do
    user = user.create({
        us_name: Faker::Internet.username,    
        us_password: Faker::Internet.password(8)
    })

    user.artist.create({
        ar_name: Faker::Name.first_name,
        ar_lastname: Faker::Name.last_name,
        ar_address: Faker::Address.street_address,
        ar_phone: Faker::PhoneNumber.phone_number,
        ar_email: Faker::Internet.email
    })
    user.artist.events.create({
        ev_title: Faker::Esport.event, 
        ev_description: Faker::Lorem.sentence,
        ev_date: Faker::Time.forward(23, :morning),
        ev_place: Faker::RickAndMorty.location,
        ev_planner: Faker::Name.name
    })
    user.artist.creations.create({
        cr_description: Faker::Job.position, 
        cr_date: Faker::Time.forward(23, :morning)
    })

    user.sponsor.create({
        sp_name: Faker::Company.name,
        sp_address: Faker::Address.street_address,
        sp_phone: Faker::PhoneNumber.phone_number,
        sp_email: Faker::Internet.email,
        sp_contact: Faker::Name.name,
        sp_nit: Faker::Company.french_siren_number
    })
    user.sponsor.job_oportunities.create({
        jo_title: Faker::Job.title,
        jo_description: Faker::Lorem.sentence
    })



end