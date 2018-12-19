

class BooksController < ApplicationController
  def new
  end

  def index
    require 'google/apis/drive_v2'
    drive = Google::Apis::DriveV2::DriveService.new
    drive.key = 'AIzaSyCDku6XekSwpF1Mjrml5ukMMp_F2JPaU4Q' 
    # Search for files in Drive (first page only)
    @book = drive.list_files(q: "title contains 'finances'")
  end 
end
