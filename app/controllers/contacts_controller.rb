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
    @contact = Contacts.new(
      contact: first_name = params[:first_name],
      contact: last_name = params[:last_name],
      contact: email = params[:email],
      contact: phone_number = params[:phone_number], # remember comma when adding
      contact: address = params[:phone_number]

    )
    @contact.save
    render :show
  end

  def update
    @contact = Contact.find_by(id: params[:id])
    @contact.first_name = params[:first_name] || @contact.first_name
    @contact.last_name = params[:last_name] || @contact.last_name
    @contact.email = params[:email] || @contact.email
    @contact.phone_number = params[:phone_number] || @contact.phone_number
    @contact.address = params[:address] || @contact.address
    @contact.save
    render :show
  end

  def destroy
    @contact = Contact.find_by(id: params[:id])
    @contact.destroy
    render json: {message: "contact destroyed"}
  end

end

