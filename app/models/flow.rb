class Flow < ActiveRecord::Base
  attr_accessible :archived, :board_id, :id, :updated_at, :pinned, :local
  has_many :posts, :dependent => :destroy
  belongs_to :board
  PerPage = 10
  def self.page(pg)
    pg = pg.to_i
    self.order('id asc').offset((pg-1)*PerPage).limit(PerPage)
  end
 
  def self.pgcount
    count % PerPage == 0 ? count / PerPage : count / PerPage + 1
  end
end
