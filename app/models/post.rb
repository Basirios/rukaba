class Post < ActiveRecord::Base
  attr_accessible  :id, :body, :deleted, :flow_id, :local, :name, :replyed, :subj, :tripcode, :created_at, :email, :pass
  belongs_to :flow
  belongs_to :board
  after_create :update_flow
  before_save :default_values, :parse_reply_to
  before_create :name_tripcoding

  def parse_reply_to
    unless body.nil? then
      body.scan(/> ?(\d+)/).each do |id|
        if p = Post.find_by_local(id[0]) then
		body.gsub!(/>> ?(\d+)/,"<a href=\"/#{p.flow.board.url}/res/#{p.flow.local}##{id[0]}\">>>#{id[0]}</a>")
		end
      end
      
      # NOTE hardcoding newline may create problem on Mac?
      # TODO do this in JS and check for same page anchor
    end
  end
  
  private
    def default_values
		if self.name == "" then
      self.name = self.flow.board.default_name
	  end
    end
   def update_flow
    self.flow.update_attribute('updated_at',self.created_at)
  end
	#def set_local
		#@f = flow.find(params[:flow])
	#	@board = @f.board
	#	params[:post][:local] = @board.posts.count+1
	#end
def name_tripcoding
	if self.name.scan("#").size > 0 then
	sp = self.name.split("#")
	self.name = sp[0]
    self.tripcode = trip("#"+sp[1]) unless self.name.nil?
	end
  end


  def trip(input)
    if input.include?('!')
      return input.tr('!','!')
    end
    
    if input.include?('#') then
      p = input.partition("#")

      # p[2].encode!('SJIS')
      salt = (p[2] + 'H..')[1, 2].gsub(/[^\.-z]/, '..').tr(':;<=>?@[\]^_`', 'ABCDEFGabcdef')

      input = p[0] + '!' + p[2].crypt(salt)[-10 .. -1]
    end
    return input
  end
end
