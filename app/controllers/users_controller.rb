class UsersController < ApiController
    def index
        users = User.all
        render json: each_serialize(users)
    end
    def create
    
    end
    def show
    
    end
    def update
    
    end
    def destroy
    
    end
end
