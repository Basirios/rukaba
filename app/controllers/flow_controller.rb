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
	@flow = Flow.find(params[:flow])
	@target = flow_posts_url(@flow)
	@posts = @flow.posts.order("local")
	@i = 1
  end

  def modify
  end

  def delete
  end
end
