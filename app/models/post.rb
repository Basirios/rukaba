class Post < ActiveRecord::Base
  attr_accessible :body, :deleted, :flow_id, :id, :local, :name, :replyed, :subj, :tripcode, :created_at
  belongs_to :flow
end
