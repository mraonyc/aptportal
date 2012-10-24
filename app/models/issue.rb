class Issue < ActiveRecord::Base
  attr_accessible :category, :description, :is_resolved, :issue_date, :name
  belongs_to :apartment
end
