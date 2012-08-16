class BoardController < ApplicationController
  def index
  end

  def show
 	@params = params
	@board = Board.where(:url=>params[:board]).first
	@target = "/boards/#{params[:board]}/flows"
	@flows = @board.flows.order("pinned ASC","updated_at DESC")
	@gposts = @board.posts
	@i = 1
  end
end
