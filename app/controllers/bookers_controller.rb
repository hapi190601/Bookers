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
    @booker = Booker.find(params[:id])
  end

  def create
    booker = Booker.new(booker_params)
    booker.save
    redirect_to "/bookers/#{booker.id}"
  end

  def edit
    @booker = Booker.find(params[:id])
  end

  def update
    booker = Booker.find(params[:id])
    booker.update(booker_params)
    redirect_to show_path(booker.id)
  end

  def destroy
    booker = Booker.find(params[:id])
    booker.destroy
    redirect_to "/bookers/index"
  end


  # ストロングパラメータ
  private
  def booker_params
    params.permit(:title, :body)
  end
end
