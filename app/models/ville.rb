class Ville < ActiveRecord::Base
  before_validation :geocode
  
  
  def meteo
    forecast = ForecastIO.forecast(self.latitude, self.longitude) # params are: latitude, longitude
    if forecast
    @meteo = forecast.currently # gives you the current forecast datapoint
    forecast.currently.summary # =>"Mostly Cloudy"
    end  
  end 
  
  private
  def geocode
      places = Nominatim.search(self.nom).limit(1)
        if places.first
        place = places.first 
        self.latitude = place.lat
        self.longitude = place.lon
        #ou 
        #place = places.first -> suppr
        #self.latitude = places.first.lat
        #self.longitude = places.first.lon
        end 
  end

end
