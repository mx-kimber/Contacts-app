class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
    render :index
  end

  def show
    @contact = Contact.find_by(id: params[:id])
    render :show
  end

  def create

    results = Geocoder.search(params[:address])
    latitude = results.first.coordinates[0]
    longitude = results.first.coordinates[1]

    @contact = Contact.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      address: params[:address],
      latitude: latitude,
      longitude: longitude,

    )
    @contact.save
    render :show
  end

  def update
    results = Geocoder.search(params[:address])
    latitude = results.first.coordinates[0]
    longitude = results.first.coordinates[1]

    @contact = Contact.find_by(id: params[:id])
    @contact.first_name = params[:first_name] || @contact.first_name
    @contact.last_name = params[:last_name] || @contact.last_name
    @contact.email = params[:email] || @contact.email
    @contact.phone_number = params[:phone_number] || @contact.phone_number
    @contact.address = params[:address] || @contact.address
    @contact.latitude = latitude
    @contact.longitude = longitude
    @contact.save
    render :show
  end

  def destroy
    @contact = Contact.find_by(id: params[:id])
    @contact.destroy
    render json: {message: "contact destroyed"}
  end

end

