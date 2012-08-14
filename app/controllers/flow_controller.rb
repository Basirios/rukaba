class FlowController < ApplicationController
  def index
  end

  def new
	@params = params
	@flow = Flow.find(params[:flow])
	redirect_to proc { show_flow_url(@flow)}
  end

  def show
  	@params = params
	@target = "/post/new"
	@posts = Post.all
	@i = 1
  end

  def modify
  end

  def delete
  end
end
