class Board < ActiveRecord::Base
  attr_accessible :desc, :hidden, :id, :rules, :kind, :url, :default_name
  has_many :flows
  has_many :posts, :through => :flows
end
