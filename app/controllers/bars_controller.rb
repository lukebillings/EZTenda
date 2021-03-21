class BarsController < ApplicationController
    def index
        @tenders = Tender.all
    end

    def show 
       
    end 

    def new
        @tender = Tender.new
    end 

    def create 
        
    end 

    def destroy 
    end 

    def update 
    end
end
