class CowsController < ApplicationController
  def index
    @cows = Cow.all
  end

  def new
    @cow = Cow.new
  end

  def create
    @cow = Cow.new(params[:cow])

    if @cow.save
      redirect_to cows_path
    else
      render :new
    end
  end
end
