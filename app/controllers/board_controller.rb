class BoardController < ApplicationController
  def index
  end

  def show
	@params = params
	@target = "/flow/new"
  end
end
