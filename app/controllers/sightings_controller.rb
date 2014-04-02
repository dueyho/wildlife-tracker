class SightingsController < ApplicationController
  def new
    specie = Specie.find(params[:species_id])
    @sighting = specie.sightings.new
    render('sightings/new.html.erb')
  end

  def create
    @sighting = Sighting.new(:date => params[:date],
                             :time => params[:time],
                             :location => params[:location],
                             :specie_id => params[:species_id])

    if @sighting.save
      render('sightings/success.html.erb')
    else
      render('sightings/new.html.erb')
    end
  end
end
