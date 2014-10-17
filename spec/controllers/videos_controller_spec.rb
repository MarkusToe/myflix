require 'spec_helper'

describe VideosController do
  describe 'GET #index' do
    it "renders the index view" do
      get :index
      assert_response :success
    end
  end
end