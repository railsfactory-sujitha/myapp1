class WelcomesController < ApplicationController
def index
 @welcome = Welcome.all
end
def new
 @welcome = Welcome.new
end
def create
 @welcome = Welcome.new(welcome_params)
  
   if @welcome.save
        redirect_to @welcome
   else 
      render 'new'
   end
end
def show
 @welcome = Welcome.find(params[:id])
end
def destroy
 @welcome = Welcome.find(params[:id])
 @welcome.destroy

 redirect_to welcomes_path
end
private
def welcome_params
params.require(:welcome).permit(:name, :address, :phoneno)
end
end
