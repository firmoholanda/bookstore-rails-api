class FavouritesController < ApplicationController
  
  # GET /favorites
  def index
    @favourites = current_user.favourite_books
    json_response(@favourites)
  end

  # POST /favorites
  def create
    current_user.favourites.create!(favourite_params)    
    json_response({ message: Message.favourite_created })
  end
  
  # DELETE /favorites
  def destroy
    current_user.favourites.where(favourite_params)[0].destroy    
    json_response({ message: Message.favourite_deleted })
  end

  private

  def favourite_params
    params.permit(:book_id)
  end

end
