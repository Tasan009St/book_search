

class BooksController < ApplicationController
  def index
    #require 'google/apis/drive_v2'
    #drive = Google::Apis::DriveV2::DriveService.new
    #drive.key = 'AIzaSyCDku6XekSwpF1Mjrml5ukMMp_F2JPaU4Q' 
    # Search for files in Drive (first page only)
    #@book = drive.list_files(q: "title contains 'finances'")
    
    
    #@book = Book.where(isbn:params[:isbn])
    #amazon api取得のため一時的 cpmcに全件表示にする。
    #@book = Book.all


    #book isbnでの検索。検索結果がない場合は全件表示
    @book = Book.all
    if params[:isbn].present?
      @book = @book.get_by_isbn params[:isbn]
    end

  end 

  def show

  end
  

  def new
    #amazon API取得のため一時的に一定の本を登録できる状態にwebサイトをしておく
    @book = Book.new
  end

  def create
    @book = Book.new(register_params_book)
       @id = Book.where(isbn = params[:isbn]).select(:id) 
       @book_feature = BookFeature.new(:book_id => @id)
    if @book.save && @book_feature.save
      redirect_to root_path, notice: 'Success'
    else
       flash[:alert] = 'Save Error' 
       render :new          
    end
  end
  
  private
  def search_params
    params.require(:book).permit(:isbn)
  end
  
  def register_params_book
    params.require(:book).permit(:isbn,:title,:author_id)
  end

  def register_params_book_feature
    params.require(:book).permit(:isbn)
  end

end
