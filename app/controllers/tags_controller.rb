class TagsController < ApplicationController

  def index
    @tags = Tag.all    #.sort_by(&:name)
  end

  def show
    @tag = Tag.find(params[:id])
  end
  def destroy 
  	@tag =Tag.find(params[:id])
  	@tag.destroy

  	flash.notice = "\"#{@tag.name}\" Deleted!"

  	redirect_to tags_path
  end

  before_filter :require_login, only: [destroy]

end

