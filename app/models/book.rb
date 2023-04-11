class Book < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  
  # 画像ない時のエラー回避メソッド
  def get_image
    if image.attached?
      image
    else
      'default-image.jpg'
    end
  end
end
