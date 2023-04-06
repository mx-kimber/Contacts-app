class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
    render :index
  end

  def show
    @contact = contact.find_by(id: params[:id])
    render :show
  end

  def create
    @contact = contact.new(
    contact: first_name = params[:first_name],
    contact: last_name = params[:first_name],
    contact: email = params[:email],
    contact: phone_number = params[:phone_number] # remember comma when adding

    )
    render :show
  end
end
