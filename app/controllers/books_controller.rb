class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]


  def subject
    @books = Book.where(subject: params[:id])
    @subject = params[:id]
  end
  
  def search
    @search_term = params[:q]
    st = "%#{params[:q]}%"
    @books = Book.where("Title like ? or description like ? or subject like ?", st, st, st)
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @books }
    end
  end


  # GET /books
  # GET /books.json
  def index
    @books = Book.all
  end

  # GET /books/1
  # GET /books/1.json
  def show
  end

  # GET /books/new
  def new
    @book = Book.new
  end
  
  def create
    @book = Book.create(book_params)
    redirect_to books_path
  end

  # GET /books/1/edit
  def edit
    @product = Book.find(params[:id])
  end

  # POST /books
  # POST /books.json


  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to book_path
    
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url, notice: 'Book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:title, :description, :author, :subject, :publisher, :price)
    end
    
    

    
end
