class Book < ApplicationRecord
    
    belongs_to :orderitem
    #has_many :categories


    def self.new_from_lookupBook(book)
        lookedup_path = 'https:/'

    end
    
    
    
end
