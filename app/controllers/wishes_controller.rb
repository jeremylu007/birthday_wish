#encoding:utf-8
class WishesController < ApplicationController

  def new
    @wish = Wish.new
    @imageId = params[:imageId]
    @background_image = "/assets/wishes/bg.jpg"
  end

  def create
    @wish = Wish.new(params[:wish])
    Wish.to_save(@wish)
    @imageIds = Wish.all.map(&:imageId)
    flash[:success] = "#{@wish.wisher}, 谢谢你的祝福！"
    redirect_to root_path
  end

  def show
    imageId = params[:imageId]
    @background_image = "/assets/papers/2.jpg"
    @wish = Wish.where("imageId" => imageId).first
  end
end
