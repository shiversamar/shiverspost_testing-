require 'rails_helper'

RSpec.describe Post, type: :model do
  it 'is a thing' do
    expect{Post.new}.to_not raise_error
  end

  it 'has name has title and body' do
    post = Post.new
    post.title = 'Test Title'
    post.body = 'Test Body'
    expect(post.save). == true
    p2 = Post.find_by_title 'Test Title'
    expect(p2.title).to eq 'Test Title'
    expect(p2.body).to eq 'Test Body'
  end

  it 'is not valid with a title longer than 100 symbols' do
    post = Post.new(title: 'a' * 101)
    expect(post).not_to be_valid
  end

  it 'post include current_user' do
    user1 = User.new('User1')
    post = Post.new(title: 'Test Title', body: 'Test Body', users:[User])
    post.users.should include(user1)
    # post.users.should have(1).users
  end





end#Rspec

 #<Post id: 1, title: "Test Title", body: "Test Body", created_at: "2017-04-02 17:41:07", updated_at: "2017-04-05 21:23:29", user_id: 1>

 #<Post id: 2, title: "Test two Title", body: "Test two Body", created_at: "2017-04-02 18:23:53", updated_at: "2017-04-05 21:25:12", user_id: 1>
