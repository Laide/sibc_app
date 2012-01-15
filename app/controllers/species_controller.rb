class SpeciesController < ApplicationController
  before_filter :authenticate, :only => [:index, :edit, :update, :destroy]
  #before_filter :correct_user, :only => [:edit, :update]
  before_filter :admin_user,   :only => :destroy
  
  def new
     @species = Species.new
     @title = "Recording Tools"
  end
  
  def create
    @species = Species.new(params[:species])
    if @species.save
      #sign_in @user
      flash[:success] = "Your species has been recorded!"
      redirect_to @species
    else
      @title = "Sign up"
      render 'new'
    end
  end
 
  def edit
    @species = Species.find(params[:id])
    @title = "Edit species"
  end
 
  def update
    @species = Species.find(params[:id])
    if @species.update_attributes(params[:species])
      flash[:success] = "Species updated."
      redirect_to @species
    else
      @title = "Edit species"
      render 'edit'
    end
  end

  def index
    @title = "All species"
    @species = Species.paginate(:page => params[:page])
  end

  def show
    @species = Species.find(params[:id])
    @title = @species.name
  end

  def destroy
    Species.find(params[:id]).destroy
    flash[:success] = "Species destroyed."
    redirect_to species_path
  end

  private

    def authenticate
      #deny_access unless signed_in?
    end

    def admin_user
      redirect_to(root_path) unless current_user.admin?
    end

end
