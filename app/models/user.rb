class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_attachment :photo

  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, omniauth_providers: [:facebook]

   def self.find_for_facebook_oauth(data)
      email = data.info.email
      uid = data.uid

      user = User.where(email: email, uid: uid).first

      if user.nil?
          User.create({
              provider: "facebook",
              uid: uid,
              email: email,
              first_name: data.info.first_name,
            last_name: data.info.last_name,
            facebook_picture_url: data.info.image,
            password: Devise.friendly_token[0,20]
          })
          # Need to create the user
      else
          # return the user
          user
      end
  end
end
