class FlowController < ApplicationController
  def index
  end

  def new
	@params = params
		@board = Board.where(:url=>params[:url]).first
		@boards = Board.all
		@f = @board.flows.create(:archived=>false,:local=>(@board.flows.all.count+1))
		@f.save
		params[:post][:local] = @board.posts.count+1
		@p = @f.posts.build(params[:post])
		@p.save
		redirect_to :back
  end

  def show
  	@params = params
	@flow = Flow.find(params[:flow])
	@target = "/flows/#{@flow[:local]}/posts"
	@posts = @flow.posts.order("local")
	@i = 1
	@boards = Board.all
  end

  def modify
  end

  def delete
  end
end
