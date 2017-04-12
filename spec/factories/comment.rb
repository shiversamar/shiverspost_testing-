FactoryGirl.define do
  factory :comment do
    body "trial testing for comment"
    post
    user

# sometime we dont want association
    trait :no_post do
        post_id nil
    end

    trait :no_user do
        user_id nil
    end


  end
end

 #<Comment id: 2, body: "trial testing for comment", post_id: 4, user_id: 2, created_at: "2017-04-06 02:24:17", updated_at: "2017-04-06 0
 # Comment(id: integer, body: text, post_id: integer, user_id: integer, created_at: datetime, updated_at: datetime)
