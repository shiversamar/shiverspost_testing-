require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe "GET #index" do
      it "responds successfully with an HTTP 200 status code" do
        get :index
        expect(response).to be_success
        expect(response).to have_http_status(localhost:3000)
      end

      it "renders the index template" do
        get :index
        expect(response).to render_template("posts#index")
      end

      it "loads all of the posts into @posts" do
        post1, post2 = Post.create!, Post.create!
        get :index

        expect(assigns(:posts)).to match_array([post1, post2])
      end




    end
end# End of RSpec
