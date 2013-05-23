#encoding: utf-8
class Wish < ActiveRecord::Base
  attr_accessible :imageId, :wish_msg, :wisher

  def self.to_save(wish)
    imageId = self.get_valid_imageid(wish)
    if imageId.nil?
      return false
    else
      wish.imageId = imageId
      wish.save
    end
  end

  private

  def self.get_valid_imageid(wish)
    @imageIds = Wish.all.map(&:imageId)
    if @imageIds.include?(wish.imageId)
      (1..424).each do |i|
        if !(@imageIds.include?(i.to_s))
          return i.to_s
        end
      end
    else
      return wish.imageId
    end
  end
end
