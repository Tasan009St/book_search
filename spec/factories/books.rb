FactoryBot.define do
  factory :book do
    isbn { "MyString" }
    author_id { "MyString" }
    title { "MyString" }
    cover_image_path { "MyString" }
    publisher { "MyString" }
    first_publish { "2018-12-21" }
  end
end
