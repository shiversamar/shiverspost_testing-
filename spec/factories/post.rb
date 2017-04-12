FactoryGirl.define do
  factory :post do
    title 'Test Title'
    body 'Test Body'
    association user
  end

  factory :user do
    first_name = 'user_first'
    last_name = 'user_last'
    about_me = 'student'
    email = 'user@example.com'
    password = 'caplin'
    sequence(:id) { |id| id }


    trait :user do
        user false
    end
  end
end

 #<User id: 1, email: "user@example.com", created_at: "2017-04-05 17:54:17", updated_at: "2017-04-05 17:54:18", first_name: nil, last_name: "user_last", about_me: "student">



#<Post id: 1, title: "Test Title", body: "Test Body", created_at: "2017-04-02 17:41:07", updated_at: "2017-04-05 21:23:29", user_id: 1>
