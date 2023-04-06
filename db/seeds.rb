10.times do
  contact = Contact.new(
    first_name: FFaker::Name.unique.first_name,
    last_name: FFaker::Name.last_name,
    email: FFaker::Internet.email,
    phone_number:FFaker::PhoneNumber.phone_number
  )
  contact.save
end

