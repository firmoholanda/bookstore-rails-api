class FavouritesController < ApplicationController
  def index
    @favourites = current_user.favourite_books

    json_response(@favourites)
  end

  def create
    current_user.favourites.create!(favourite_params)

    response = { message: Message.favourite_created }
    json_response(response, :created)
  end

  def destroy
    current_user.favourites.where(favourite_params)[0].destroy

    response = { message: Message.favourite_deleted }
    json_response(response, :ok)
  end

  private

  def favourite_params
    params.permit(:book_id)
  end
end
