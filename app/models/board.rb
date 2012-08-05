class Board < ActiveRecord::Base
  attr_accessible :desc, :hidden, :id, :rules, :type, :url
  has_many :flows
end
