class Post < ActiveRecord::Base
  attr_accessible  :id, :body, :deleted, :flow_id, :local, :name, :replyed, :subj, :tripcode, :created_at, :email, :pass
  belongs_to :flow
  belongs_to :board
  after_create :update_flow
   def update_flow
    self.flow.update_attribute('updated_at',self.created_at)
  end
	#def set_local
		#@f = flow.find(params[:flow])
	#	@board = @f.board
	#	params[:post][:local] = @board.posts.count+1
	#end
end
