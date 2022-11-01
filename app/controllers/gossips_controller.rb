class GossipsController < ApplicationController
    def index
        @gossips = Gossip.all
    end
    
      def show
      end
    
      def new
        @gossip = Gossip.new
      end
    
      def create
   
        user = User.find(1)

        @gossip = Gossip.new(title: params[:title], content: params[:content], user_id: user.id)
     
        if @gossip.save
          redirect_to :action => "index"
        else
          render :action => "new"
        end
      end
    
      def edit
      end
    
      def update
      end
    
      def delete
      end

      private

     
end
