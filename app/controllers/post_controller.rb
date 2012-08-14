class PostController < ApplicationController
  def new
	@params = params
	@flow = Flow.find(params[:flow])
	@p = @flow.post.create(:name=>params[:name], :subj=>params[:subject], :email=>params[:email], :body=>params[:message], :pass=>params[:password])
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
