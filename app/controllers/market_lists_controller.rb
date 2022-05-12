class MarketListsController < ApplicationController

    def index
        @market_list = MarketList.all
    end

    def show
        @market_list = MarketList.find(params[:id])
    end

    def new
        @market_list = MarketList.new
    end

    def create
        @market_list = MarketList.new(list_params)
        
        if @market_list.save
            redirect_to @market_list
        else
            render :new, status: :unprocessable_entity
        end
    end

    def edit
        @market_list = MarketList.find(params[:id])
    end

    def update
        @market_list = MarketList.find(params[:id])

        if @market_list.update(list_params)
            redirect_to @market_list
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @market_list = MarketList.find(params[:id])
        @market_list.destroy

        redirect_to root_path, status: :see_other
    end

    private
        def list_params
            params.require(:market_list).permit(:name, :market_date)
        end
end
