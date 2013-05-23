class WishesController < ApplicationController

  def new
    @wish = Wish.new
    @imageId = params[:imageId]
    @background_image = "/assets/wishes/bg.jpg"
  end

  def create
    @wish = Wish.new(params[:wish])
    @wish.save
    @imageIds = Wish.all.map(&:imageId)
    flash[:success] = @wish.wisher + ", Thanks!"
    redirect_to root_path
  end

  def show
    imageId = params[:imageId]
    @background_image = "/assets/papers/2.jpg"
    @wish = Wish.where("imageId" => imageId).first
  end
end
