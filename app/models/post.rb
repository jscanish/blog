class Post < ActiveRecord::Base
  attr_accessible :body, :title
  has_many :comments, :order => "created_at DESC"
  validates_presence_of :body, :title


end
