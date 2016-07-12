class HomeController < ApplicationController
    
    def index
       render json: 'Welcome to the api' 
    end
end
