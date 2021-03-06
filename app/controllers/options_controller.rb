class OptionsController < ApiController
    def index
        options = Option.all
        render json: each_serialize(options)
    end

    def create
        option = Option.create(option_params)
        render json: serialize(option)
    end

    def update
        option = Option.find(params[:id])
        option.update(option_params)
        render json: serialize(option)
    end

    private
    def option_params
        params.require(:option).permit(:id, :item_id, :name, :price)
    end
end
