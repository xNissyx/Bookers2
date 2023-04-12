class User < ApplicationRecord
  has_many :books, dependent: :destroy
  
  has_one_attached :profile_image
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  def get_image
    if profile_image.attached?
      profile_image
    else
      'default-image.jpg'
    end
  end
end
