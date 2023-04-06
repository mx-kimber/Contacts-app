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
      contact: phone_number = params[:phone_number] # remember comma when adding

    )
    @contact.save
    render :show

  end
end
