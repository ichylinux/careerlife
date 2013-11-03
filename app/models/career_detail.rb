class CareerDetail < ActiveRecord::Base
  validates :project_name, :presence => true
end
