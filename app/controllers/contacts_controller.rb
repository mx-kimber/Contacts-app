class ContactsController < ApplicationController

  def index
    render json: {message: "this is working"}
  end

end
