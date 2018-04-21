class UsersController<ApplicationController


    def my_books
    
    end

    def my_profile
        @user = current_user
    end

=begin
my_basket is configured to the current user 
=end

    def my_basket
        @user = current_user
    end


=begin
add_to_basket includes an if statement. If the users basket already exists it adds the book details
Else it will create the basket
=end

    def add_to_basket
        if Basket.exists?(user_id: params[:user_id], book_id: params[:book_id])
          @basket = Basket.find_by(user_id: params[:user_id], book_id: params[:book_id])
          @basket.increment!(:amount)
        else
          Basket.create(user_id: params[:user_id], book_id: params[:book_id], amount: 1)
        end
        redirect_to my_basket_path(params[:user_id])
    end

=begin
Remove basket allows the user to clear down their basket by destroying it for the given user.
it then redirects them to an empty basket 
=end 

    def remove_from_basket
        @basket = Basket.find_by(user_id: params[:user_id], book_id: params[:book_id])
        @basket.destroy
        redirect_to my_basket_path(params[:user_id])
    end
    
end
