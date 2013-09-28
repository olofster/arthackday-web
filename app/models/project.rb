class Project < ActiveRecord::Base
  belongs_to :event
  has_and_belongs_to_many :participants

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :description, :tag, :website, :github, :participant_ids, :event_id
end
