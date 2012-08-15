class Flow < ActiveRecord::Base
  attr_accessible :archived, :board_id, :id, :updated_at, :pinned, :local
  has_many :posts, :dependent => :destroy
  belongs_to :board
end
