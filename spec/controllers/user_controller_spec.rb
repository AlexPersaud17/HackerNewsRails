require 'spec_helper'

describe UserController do

  describe "GET 'login'" do
    it "returns http success" do
      get 'login'
      response.should be_success
    end
  end

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
  end

end
