class TypesController < ApplicationController

    def index
        @type = Type.all 
    end 

    def show
        @type = Type.find(params[:id])
    end 
end
