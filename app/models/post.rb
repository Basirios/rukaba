class Post < ActiveRecord::Base
  attr_accessible  :id, :body, :deleted, :flow_id, :local, :name, :replyed, :subj, :tripcode, :created_at, :email, :pass
  belongs_to :flow
end
