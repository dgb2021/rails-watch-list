class BookmarksController < ApplicationController
  def create
    @bookmark = Bookmark.new(bookmarks_params)
    @list = List.find(params[:list_id])
    @bookmark.list = @list
      if @bookmark.save
        redirect_to list_path(@list)
      else
      redirect_to lists_path
      end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
  end

  private
  def bookmarks_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end
  
end
