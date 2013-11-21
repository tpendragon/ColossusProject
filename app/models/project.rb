class Project < ActiveRecord::Base
  belongs_to :user
  validates :description, :title, :user, :presence => true
  attr_accessible :description, :title
end
