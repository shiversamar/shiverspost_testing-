require 'rails_helper'

RSpec.describe Comment, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  it 'is a thing' do
    expect{Comment.new}.to_not raise_error
  end


  it 'has name has comment content body, post_id and user_id' do
    comment = Comment.new
    comment.body = 'trial testing for comment'
    comment.post_id = 4
    comment.user_id = 2
    expect(comment.save). == true
  end

  before do
    @comment = Comment.new(body:'trial testing for comment', post_id:4, user_id:2)
  end

    subject { @comment }

    it { should respond_to(:body) }
    it { should respond_to(:post_id) }
    it { should respond_to(:user_id) }

end
#<ActiveRecord::Relation [#<Comment id: 2, body: "trial testing for comment", post_id: 4, user_id: 2, created_at: "2017-04-06 02:24:17", updated_at: "2017-04-06 02:24:17">, #<Comment id: 3, body: "this was the first Test Title 222", post_id: 1, user_id: 2, created_at: "2017-04-06 02:24:46", updated_at: "2017-04-06 02:36:40">, #<Comment id: 5, body: "Github and facebook", post_id: 5, user_id: 2, created_at: "2017-04-06 04:57:35", updated_at: "2017-04-06 04:58:15">, #<Comment id: 7, body: "Trying to edit", post_id: 8, user_id: 2, created_at: "2017-04-06 05:27:52", updated_at: "2017-04-06 05:40:05">, #<Comment id: 8, body: "Forage raw denim prism, cold-pressed readymade tru...", post_id: 3, user_id: 2, created_at: "2017-04-06 05:44:44", updated_at: "2017-04-06 05:44:44">, #<Comment id: 10, body: "testing", post_id: 9, user_id: 2, created_at: "2017-04-06 18:58:59", updated_at: "2017-04-06 18:58:59">, #<Comment id: 9, body: "Testing one two three okey", post_id: 2, user_id: 2, created_at: "2017-04-06 18:56:29", updated_at: "2017-04-07 02:37:18">]>
