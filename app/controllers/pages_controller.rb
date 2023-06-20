class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @properties = Property.order(rating: :desc).limit(5)
  end
end
