class PagesController < ApplicationController
  def home
  @title = "Home"
  if signed_in?
    @micropost = Micropost.new
    @feed_items = current_user.feed.paginate(:page => params[:page])
  end
  end

  def news
  @title = "News and Upcoming Events"
  end

  def surveys
  @title = "Current Surveys"
  end

  def sightings
  @title = "Submit your Sightings"
  end

  def enquiry
  @title = "A mention of our Enquiry services"
  end

  def recording
  @title = "Recording Tools"
  end

  def about
  @title = "About Us"
  end

  def contact  
  @title = "Contact Us"
  end
  
  def help
    @title = "Help"
  end

end
