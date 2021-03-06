class User < ApplicationRecord
  #Class User generated by devise with authentication for database
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
         
    has_many :basket
    has_many :book, through: :basket
end
