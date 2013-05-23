class CakesController < ApplicationController

  def show
    @imageIds = Wish.all.map(&:imageId)
  end
end
