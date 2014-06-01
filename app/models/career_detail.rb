# coding: UTF-8

class CareerDetail < ActiveRecord::Base
  validates :project_name, :presence => true
  validates :role, :presence => true
end
