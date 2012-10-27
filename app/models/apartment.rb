class Apartment < ActiveRecord::Base
  attr_accessible :area, :lease, :lease_expiration, :name, :photo, :rent, :rooms, :remote_photo_url, :person_ids, :issue_ids
  has_and_belongs_to_many :people
  has_many :issues
  mount_uploader :photo, AptPicUploader
  mount_uploader :lease, LeaseUploader
end
