class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.column :date, :date
      t.column :time, :time
      t.column :location, :string
      t.column :species_id, :integer
      t.timestamps
    end
  end
end
