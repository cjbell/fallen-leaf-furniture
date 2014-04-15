module Admin
  class ImagesController < BaseController
    inherit_resources

  private

    def permitted_params
      params.permit image: [:name, :source]
    end

  end
end