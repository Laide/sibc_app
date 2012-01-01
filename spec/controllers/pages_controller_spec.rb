require 'spec_helper'

describe PagesController do

  describe "GET 'Home'" do
    it "should be successful" do
      get 'Home'
      response.should be_success
    end
  end

  describe "GET 'News_and_Upcoming_Events'" do
    it "should be successful" do
      get 'News_and_Upcoming_Events'
      response.should be_success
    end
  end

  describe "GET 'Current_Surveys'" do
    it "should be successful" do
      get 'Current_Surveys'
      response.should be_success
    end
  end

  describe "GET 'Submit_your_Sightings'" do
    it "should be successful" do
      get 'Submit_your_Sightings'
      response.should be_success
    end
  end

  describe "GET 'A_mentiion_of_our_Enquiry_services'" do
    it "should be successful" do
      get 'A_mentiion_of_our_Enquiry_services'
      response.should be_success
    end
  end

  describe "GET 'Recording_Tools'" do
    it "should be successful" do
      get 'Recording_Tools'
      response.should be_success
    end
  end

  describe "GET 'About_Us'" do
    it "should be successful" do
      get 'About_Us'
      response.should be_success
    end
  end

  describe "GET 'Contact_Us'" do
    it "should be successful" do
      get 'Contact_Us'
      response.should be_success
    end
  end

end
