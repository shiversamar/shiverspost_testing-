require 'rails_helper'

RSpec.describe Post, type: :model do
  it 'is a thing' do
    expect{Post.new}.to_not raise_error
  end

  it 'has name has title,body and user_id' do
    post = Post.new
    post.title = 'Test Title'
    post.body = 'Test Body'
    post.user_id = 1
    expect(post.save). == true

  end

  it 'is not valid with a title longer than 100 symbols' do
    post = Post.new(title: 'a' * 101)
    expect(post).not_to be_valid
  end


    # describe 'post and user association' do
    #
    #   let(:user) { create(:user) }
    #   let(:post) { create(:post, user: user) }
    #
    #   it 'list post has title ,body and user_id' do
    #       expect(post.title).to_not be_nil
    #       expect(post.body).to_not be_nil
    #       expect(post.user).to_not be_nil
    #   end
    # end


    # describe 'comments association with post' do
    #   let(:'trial testing for comment') { create (:comment, :no_post) }
    #   let(:'this was the first Test Title 222')  { create (:comment, :no_post, body: 'Comment 2') }
    #
    #   it 'list comments in the order they were created' do
    #       ('trial testing for comment').post_id:: post.id
    #       ('trial testing for comment').save!
    #
    #       ('this was the first Test Title 222').post_id:: post.id
    #       ('this was the first Test Title 222').save!
    #
    #       expect(post.comments).to eq {['trial testing for comment', 'this was the first Test Title 222']}
    #   end
    # end




    #<ActiveRecord::Relation [#<Comment id: 2, body: "trial testing for comment", post_id: 4, user_id: 2, created_at: "2017-04-06 02:24:17", updated_at: "2017-04-06 02:24:17">, #<Comment id: 3, body: "this was the first Test Title 222", post_id: 1, user_id: 2, created_at: "2017-04-06 02:24:46", updated_at: "2017-04-06 02:36:40">, #<Comment id: 5, body: "Github and facebook", post_id: 5, user_id: 2, created_at: "2017-04-06 04:57:35", updated_at: "2017-04-06 04:58:15">, #<Comment id: 7, body: "Trying to edit", post_id: 8, user_id: 2, created_at: "2017-04-06 05:27:52", updated_at: "2017-04-06 05:40:05">, #<Comment id: 8, body: "Forage raw denim prism, cold-pressed readymade tru...", post_id: 3, user_id: 2, created_at: "2017-04-06 05:44:44", updated_at: "2017-04-06 05:44:44">, #<Comment id: 10, body: "testing", post_id: 9, user_id: 2, created_at: "2017-04-06 18:58:59", updated_at: "2017-04-06 18:58:59">, #<Comment id: 9, body: "Testing one two three okey", post_id: 2, user_id: 2, created_at: "2017-04-06 18:56:29", updated_at: "2017-04-07 02:37:18">]>





end#Rspec

 #<Post id: 1, title: "Test Title", body: "Test Body", created_at: "2017-04-02 17:41:07", updated_at: "2017-04-05 21:23:29", user_id: 1>

 #<Post id: 2, title: "Test two Title", body: "Test two Body", created_at: "2017-04-02 18:23:53", updated_at: "2017-04-05 21:25:12", user_id: 1>
