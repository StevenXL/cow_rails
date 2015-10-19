class CowsController < ApplicationController
  def index
    @cows = Cow.all
  end

  def new
    @cow = Cow.new
  end

  def create
    @cow = Cow.new(cow_params)

    if @cow.save
      redirect_to cows_path
    else
      render :new
    end
  end

  def latest
    @cows = Cow.order(created_at: :desc).limit(3)
  end

  private

  def cow_params
    params.require(:cow).permit(:name, :breed)
  end
end
