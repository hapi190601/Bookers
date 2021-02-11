class BookersController < ApplicationController

  def new
    @booker = Booker.new
  end

  def top
  end

  def index
    @bookers = Booker.all
  end

  def show
  end

  def create
    booker = Booker.new(booker_params)
    booker.save
    redirect_to "/"
  end

  def edit
  end

  private
  def booker_params
    params.permit(:title, :body)
  end
end
