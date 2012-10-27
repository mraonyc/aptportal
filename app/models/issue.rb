class Issue < ActiveRecord::Base
  attr_accessible :category, :description, :is_resolved, :issue_date, :name, :apartment_id
  belongs_to :apartment
end
