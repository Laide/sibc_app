class PagesController < ApplicationController
  def Home
  @title = "Home"
  end

  def News_and_Upcoming_Events
  @title = "News and Upcoming Events"
  end

  def Current_Surveys
  @title = "Current Surveys"
  end

  def Submit_your_Sightings
  @title = "Submit your Sightings"
  end

  def A_mentiion_of_our_Enquiry_services
  @title = "A mention of our Enquiry services"
  end

  def Recording_Tools
  @title = "Recording Tools"
  end

  def About_Us
  @title = "About Us"
  end

  def Contact_Us  
  @title = "Contact Us"
  end
  
  def help
    @title = "Help"
  end

end
