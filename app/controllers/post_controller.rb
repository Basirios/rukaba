class PostController < ApplicationController
  def new
  
	@board = Board.where(:url=>params[:board]).first
	@f = @board.flows.where(:local=>params[:flow]).first
	
	params[:post][:local] = @board.posts.count+1
	@p = @f.posts.build(params[:post])
	@p.save
	redirect_to :back
	
  end

  # def create
	#@f = Flow.find(params[:flow])
	#@p = @f.posts.build(params[:post])
	#@p.save
	#redirect_to :back
  #end
  def show
  end

  def delete
  end

  def modify
  end

  def index
  end
 
end
