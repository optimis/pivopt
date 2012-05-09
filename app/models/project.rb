class Project < ActiveRecord::Base

  class_attribute :concerned_ids

  attr_accessible :name
end
