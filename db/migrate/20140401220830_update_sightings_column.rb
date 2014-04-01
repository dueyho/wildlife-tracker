class UpdateSightingsColumn < ActiveRecord::Migration
  def change
    remove_column :sightings, :species_id, :integer
    add_column :sightings, :specie_id, :integer
  end
end
