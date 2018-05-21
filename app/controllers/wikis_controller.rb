class WikisController < ApplicationController

 before_action :authenticate_user!, except: [:index, :show]

  def index
     if current_user.member?
       @wikis = Wiki.where(private: false) #this will only display public wikis to members
     else 
       @wikis = Wiki.all 
     end
  end

  def show
  	@wiki = Wiki.find(params[:id])
    authorize @wiki 
  end

  def new
  	@wiki = Wiki.new
    authorize @wiki 
  end

  def create
  	@wiki = Wiki.new(wiki_params)
    @wiki.user = current_user 

  	if @wiki.save
  		flash[:notice] = "Wiki was saved."
  		redirect_to @wiki 
  	else
  		flash.now[:alert] = "There was an error saving the wiki. Please try again."
  		render :new
  	end 
  end 

  def update
  	@wiki = Wiki.find(params[:id])
    authorize @wiki 

    @wiki.assign_attributes(wiki_params)

  	if @wiki.save
  		flash[:notice] = "Wiki was updated"
  		redirect_to @wiki 
  	else
  		flash.now[:alert] = "There was an error saving the wiki. Please try again."
  		render :edit
  	end 

  end 

  def edit
  	@wiki = Wiki.find(params[:id])
    @collaboration = Collaboration.new
    authorize @wiki 
  end

  def destroy
  	@wiki = Wiki.find(params[:id])

    authorize @wiki 

  	if @wiki.destroy
  		flash[:notice] = "\"#{@wiki.title}\" was deleted successfully."
  		redirect_to wikis_path
  	else
  		flash.now[:alert] = "There was an error deleting the post."
  		render :show
  	end 
  end 
  
  private 

  def wiki_params
    params.require(:wiki).permit(:title, :body, :private)
  end
end
