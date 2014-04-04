class CollectionsController < ApplicationController

  def index
  end

  def show
    redirect_to collections_path
  end

end