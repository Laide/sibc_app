require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'news'" do
    it "should be successful" do
      get 'news'
      response.should be_success
    end
  end

  describe "GET 'surveys'" do
    it "should be successful" do
      get 'surveys'
      response.should be_success
    end
  end

  describe "GET 'sightings'" do
    it "should be successful" do
      get 'sightings'
      response.should be_success
    end
  end

  describe "GET 'enquiry'" do
    it "should be successful" do
      get 'enquiry'
      response.should be_success
    end
  end

  describe "GET 'recording'" do
    it "should be successful" do
      get 'recording'
      response.should be_success
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
  end

describe "GET 'help'" do
    it "should be successful" do
      get 'help'
      response.should be_success
    end
  end

end
