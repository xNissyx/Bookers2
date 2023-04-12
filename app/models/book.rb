class Book < ApplicationRecord
  belongs_to :user
  
  validates :title, :body, presence: true
  validates :body, length: {maximum: 200}
  
  has_one_attached :image
  
  # 画像ない時のエラー回避メソッド
  def get_image
    if profile_image.attached?
      profile_image
    else
      'default-image.jpg'
    end
  end
end
