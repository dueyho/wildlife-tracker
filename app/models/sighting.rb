class Sighting < ActiveRecord::Base
  belongs_to :specie

  validates :date, :presence => true
  validates :time, :presence => true
  validates :location, :presence => true
  validates :specie_id, :presence => true
end
