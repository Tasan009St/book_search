class Book < ApplicationRecord
#isbn検索のメソッド
# ユーザー名による絞り込み
scope :get_by_isbn, ->(isbn) {
    where("isbn like ?", "%#{isbn}%")
    }
end
