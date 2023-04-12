class User < ApplicationRecord
  has_many :books, dependent: :destroy
  
  validates :name, uniqueness: true
  validates :name, length: {in: 2..20}
  validates :introduction, length: {maximum: 50}
  
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
