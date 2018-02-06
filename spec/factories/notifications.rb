FactoryBot.define do
  factory :notification do
    content "MyString"
    is_read false
    user_id 1
    from_user_id 2
    target_content_id 1
    target_content_types "MyString"
  end
end
