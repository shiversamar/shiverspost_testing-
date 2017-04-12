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


    let(:user) { create(:user) }
    let(:post) { create(:post, user: user) }

    it 'has title body and user_id' do
        expect(post.title).to_not be_nil
        expect(post.body).to_not be_nil
        expect(post.user).to_not be_nil
    end











end#Rspec

 #<Post id: 1, title: "Test Title", body: "Test Body", created_at: "2017-04-02 17:41:07", updated_at: "2017-04-05 21:23:29", user_id: 1>

 #<Post id: 2, title: "Test two Title", body: "Test two Body", created_at: "2017-04-02 18:23:53", updated_at: "2017-04-05 21:25:12", user_id: 1>
