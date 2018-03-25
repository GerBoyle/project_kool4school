class Book < ApplicationRecord
    
    belongs_to :orderitem
    has_many :categories

    
end
