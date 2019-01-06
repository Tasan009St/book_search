class Book < ApplicationRecord
#本検索のメソッド
  def self.search(search)
    if search
      Book.where(['content LIKE ?', "%#{search}%"])
    else
      Book.all
    end
  end
end
