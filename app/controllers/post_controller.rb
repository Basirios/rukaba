class PostController < ApplicationController
  def new
	@params = params
	@flow = Flow.find(params[:flow])
	@board = @flow.board
	@cnt = @board.posts.count+1
	@p = @flow.posts.create(:name=>params[:name], :subj=>params[:subject], :email=>params[:email], :body=>params[:message], :pass=>params[:password], :local=>@cnt)
	@p.save
	redirect_to :back
	
  end

  def show
  end

  def delete
  end

  def modify
  end

  def index
  end
end
