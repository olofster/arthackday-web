class Project < ActiveRecord::Base
  extend FriendlyId
  belongs_to :event
  has_many :medium
  has_and_belongs_to_many :participants

  accepts_nested_attributes_for :medium, allow_destroy: true

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :description, :tag, :website, :github, :participant_ids, :event_id, :medium_attributes, :featured_thumbnail
  has_attached_file :main_image, :styles => { :medium => "600x400", :thumb => "300x200>", :chibi => "100x75>" }, :default_url => "http://placekitten.com/300/200"

  friendly_id :name, use: :slugged
end