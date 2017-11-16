class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @users = User.all
    @cleaners = User.where.not(latitude: nil, longitude: nil)
    @hash = Gmaps4rails.build_markers(@user) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
  end
  def search
    # address = params[:address]

    @users = User.near('Rua da Sociedade Farmaceutica Lisboa', 100)
    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end
end
end


# .where.not(latitude: nil, longitude: nil, role_cleaner: true)
