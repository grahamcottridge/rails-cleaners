class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @users = User.all
    @cleaners = User.near('Rua da Sociedade Farmaceutica Lisboa', 100)
    @hash = Gmaps4rails.build_markers(@cleaners) do |cleaner, marker|
      marker.lat cleaner.latitude
      marker.lng cleaner.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end
  def search
    # address = params[:address]
    address = params[:address]
    @cleaners = User.where(role_cleaner: true).near(address, 100)
    @hash = Gmaps4rails.build_markers(@cleaners) do |cleaner, marker|
      marker.lat cleaner.latitude
      marker.lng cleaner.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end
end
