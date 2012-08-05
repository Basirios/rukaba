class Flow < ActiveRecord::Base
  attr_accessible :archived, :board_id, :id, :last_updated, :pinned
  has_many :posts
  belong_to :board
end
