class Variety < ActiveRecord::Base
  attr_accessible :breeder_idmale_parent, :clon, :clone, :country_id, :cultivar, :female_parent, :group_id, :name, :observations_cat, :observations_eng, :observations_esp, :synonim, :year
end
