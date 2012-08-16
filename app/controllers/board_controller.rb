class BoardController < ApplicationController
  def index
  end

  def show
 	@params = params
	@board = Board.where(:url=>params[:board]).first
	@boards = Board.all
	@target = "/boards/#{params[:board]}/flows"
	@flows = @board.flows.order("pinned ASC","updated_at DESC").page(params[:page])
	@gposts = @board.posts
	@i = 1
  end
end
