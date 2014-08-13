class Photo < ActiveRecord::Base
  belongs_to :projects
  attr_accessible :credit, :project_id

  has_attached_file :image, :styles => { :medium => "600x400", :thumb => "300x200>", :chibi => "100x75>" }, :default_url => "http://placekitten.com/300/200"
end
