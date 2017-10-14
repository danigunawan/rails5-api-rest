class API::BooksController < ApplicationController
  def index
		@books = Book.all
 
    render json: { data:@books}, status: :ok
  end

  def show
    @book = Book.find(params[:id])
  
	  render json: { data:@book }, status: :ok
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      render json: :ok 
    end
  end

  def update
		@book = Book.find(params[:id])
    if @book.update(book_params)
			render json: { message: 'Update book', data:@book }, status: :ok
    end
  end 

  def destroy
		@book = Book.find(params[:id])
		@book.destroy

		render json: { message: 'Delete Book', data:@book }, status: :ok
  end

  private
    def book_params
      params.require(:book).permit(:title, :price)
    end

end
