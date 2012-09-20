class Especy < ActiveRecord::Base
  attr_accessible :latin_name, :name
  has_many :plots
end
