class ShowsController < ApplicationController
  def new
    @show = Show.new
  end

  def create
    @show = Show.new(show_params)

    if @show.save
      redirect_to @show
    else
      render 'new'
    end
  end

  def index
    @shows = Show.all
  end

  def show
    @show = Show.find(params[:id])
  end

  private

  def show_params
    params.require(:show).permit(:title, :url)
  end
end
