class ItemsController < ApplicationController

    def create
        @market_list = MarketList.find(params[:market_list_id])
        @item = @market_list.items.create(item_params)
        redirect_to market_list_path(@market_list)
    end

    def destroy
        @market_list = MarketList.find(params[:market_list_id])
        @item = @market_list.items.find(params[:id])
        @item.destroy
        redirect_to market_list_path(@market_list), status: 303
    end

    private
        def item_params
            params.require(:item).permit(:name, :amount)
        end
end
