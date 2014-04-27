class ImagesController < ApplicationController

  def index
    @images = Image.limit(25).order('created_at DESC')
  end

  def show
    @image = Image.find(params[:id])
  end

end