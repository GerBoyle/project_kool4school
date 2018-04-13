class Book < ApplicationRecord
    
    #has_many:line_items, dependent: :destroy
    
    has_many :basket
    has_many :user, through: :basket

    def self.get_amount_per_user(user_id, book_id)
        Basket.find_by(user_id: user_id, book_id: book_id).amount
    end
end
