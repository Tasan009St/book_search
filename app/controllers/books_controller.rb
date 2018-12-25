

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
    @book = Book.all

  end 
  

  def new
    #amazon API取得のため一時的に一定の本を登録できる状態にwebサイトをしておく
    @book = Book.new
  end

  def create
    @book = Book.new(register_params)
    if @book.save
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
  
  def register_params
    params.require(:book).permit(:isbn,:title,:auhor_id)
  end

end
