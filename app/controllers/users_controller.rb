class UsersController<ApplicationController


    def my_books
    
    end

    def my_profile
        @user = current_user
    end
    
    def my_basket
        @user = current_user
    end

    def add_to_basket
        if Basket.exists?(user_id: params[:user_id], book_id: params[:book_id])
          @basket = Basket.find_by(user_id: params[:user_id], book_id: params[:book_id])
          @basket.increment!(:amount)
        else
          Basket.create(user_id: params[:user_id], book_id: params[:book_id], amount: 1)
        end
        redirect_to my_basket_path(params[:user_id])
    end

    def remove_from_basket
        @basket = Basket.find_by(user_id: params[:user_id], book_id: params[:book_id])
        @basket.destroy
        redirect_to my_basket_path(params[:user_id])
    end
    
end