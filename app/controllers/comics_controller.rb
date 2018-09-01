class ComicsController < ApplicationController

  def list
    @comics = Location.find_by(name: params[:locname]).comics
  end

end
