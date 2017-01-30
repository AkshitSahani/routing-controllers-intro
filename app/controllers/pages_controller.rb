class PagesController < ApplicationController
# before_action :set_header
  before_action :set_kitten_url, only: [:kitten, :kittens]

  def welcome

  end

  def about

  end

  def contest
    flash[:notice] = "Sorry, the contest has ended"
    redirect_to welcome_path
  end

  # def set_header
  #   @header = "This is the instance variable welcome page"
  # end

  def kitten
    # set_kitten_url
  end

  def kittens
    # set_kitten_url
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

  def secrets
    if params[:magic_word] == "magic"
      flash[:notice] = "Are you sure you can handle the secrets???"
      # render :secrets
    else
      flash[:alert] = "Sorry, you are not authorized to see that page"
      redirect_to welcome_path
    end
  end
end
