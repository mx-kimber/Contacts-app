class ContactsController < ApplicationController

  def index
    render json: {message: "this is working"}
  end

  def show
    @product = Product.find_by(id: params[:id])
    render :show
  end

end
