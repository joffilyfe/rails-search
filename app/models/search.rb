class Search < ActiveRecord::Base

  validates :title, :client, :presence => true
end
