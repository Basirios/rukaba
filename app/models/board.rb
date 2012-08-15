class Board < ActiveRecord::Base
  attr_accessible :desc, :hidden, :id, :rules, :kind, :url
  has_many :flows
  has_many :posts, :through => :flows
end
