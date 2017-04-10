require 'rails_helper'

RSpec.describe PostsController, type: :controller do

  it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

  it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

  before(:all)do
    @post = Post.new(body:"Test Body", title:"Test Title", user_id:1)
  end

  it "should have a matching body" do
    expect(@post.body).to eq("Test Body")
  end

  it "should have a matching title" do
    expect(@post.title).to eq("Test Title")
  end


  it "should have a user id" do
    expect(@post.user_id).to eq(1)
  end



end# End of RSpec
#<Post id: 1, title: "Test Title", body: "Test Body", created_at: "2017-04-02 17:41:07", updated_at: "2017-04-05 21:23:29", user_id: 1>

#<Post id: 2, title: "Test two Title", body: "Test two Body", created_at: "2017-04-02 18:23:53", updated_at: "2017-04-05 21:25:12", user_id: 1>
