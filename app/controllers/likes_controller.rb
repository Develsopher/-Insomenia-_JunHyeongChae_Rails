class LikesController < ApiController
    before_action :set_current_user
    before_action :set_liked_items
    
    def index
        # user = User.find(params[:like][:user_id])
        # liked_items = Item.where(id: user.liked_items)
        liked_items = Item.where(id: @item_id)
        # liked_items = Like.all
        render json: each_serialize(liked_items)
    end

    def create
        # user = User.find(params[:like][:user_id])
        # like = user.likes.create(like_params)
        like = @user.likes.create(like_params)
        render json: serialize(like)
    end

    def destroy
        like = current_api_user.liked_items.destroy(params[:id])
        render json: like
        # like = @item_id.destroy(params[:id])
        # render json: like
    end

    private

    def like_params
        params.require(:like).permit(:id, :item_id, :user_id)
    end

    def set_current_user
        @user = current_api_user
    end

    def set_liked_items
        @item_id = @user.liked_items
    end 
end
