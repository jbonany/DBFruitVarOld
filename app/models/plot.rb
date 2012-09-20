class Plot < ActiveRecord::Base
  attr_accessible :acronym, :especie_id, :location_id, :name
  belongs_to :location
  belongs_to :especy
end
