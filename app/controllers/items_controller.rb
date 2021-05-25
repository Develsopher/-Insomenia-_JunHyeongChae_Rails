class ItemsController < ApiController
  before_action :set_item, only: [:show, :update, :destroy]
  def index
    # items = Item.ransack(index_params).result
    # render json: {
    #   items: each_serialize(items),
    #   total_count: items.count
    # }
    items = Item.all
    render json: each_serialize(items)
  end

  def create
    item = Item.create(item_params)
    render json: serialize(item)
  end

  # 검색과 관련
  def show
    render json: serialize(@item)
  end

  def update
    @item.update(item_params)
    render json: serialize(@item)
  end

  def destroy
    @item.destroy
    render json: serialize(@item)
  end

  def category_item
    category_items = Item.joins(:category).where(category_id: params[:id])
    render json: {
      items: each_serialize(category_items),
      total_count: category_items.count
    }
  end

  def eachindex
    item = Item.all
    render json: serialize(item)
  end

private 

def item_params
  params.require(:item).permit(:category_id, :brand, :name, :description, :reviews_average, :reviews_count, :image, :price)
end

def set_item
  @item = Item.find(params[:id])
end


#   def index_params
#     params.fetch(:q, {}).permit(:s, :category_id_eq)
#   end
end
