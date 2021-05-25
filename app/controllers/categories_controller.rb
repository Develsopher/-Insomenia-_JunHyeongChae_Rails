class CategoriesController < ApiController
    def index
        categories = Category.all
        render json: each_serialize(categories)
    end

    def create
        categories = Category.create(category_params)
        render json: serialize(categories)
    end

    def show
        category=Category.find(params[:id])
        render json: serialize(category)
    end

    def update
        categories = Category.find(params[:id])
        categories.update(category_params)
        render json: serialize(categories)
    end

private
    def category_params
        params.require(:category).permit(:category_name, :category_name_eng, :image)
    end

end
