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

  def manage
    @shows = Show.all
  end

  def show
    @show = Show.find(params[:id])
  end

  def edit
    @show = Show.find(params[:id])
  end

  def update
    @show = Show.find(params[:id])

    if @show.update(show_params)
      redirect_to @show
    else
      render 'edit'
    end
  end

  def destroy
    @show = Show.find(params[:id])
    @show.destroy

    redirect_to shows_manage_path
  end

  private

  def show_params
    params.require(:show).permit(:title, :url, :rating)
  end
end
