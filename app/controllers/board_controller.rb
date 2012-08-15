class BoardController < ApplicationController
  def index
  end

  def show
 	@params = params
	@board = Board.where(:url=>params[:board]).first
	@target = "/boards/#{params[:board]}/flows"
	@flows = @board.flows.order("local")
	@i = 1
  end
end
