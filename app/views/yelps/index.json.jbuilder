json.array!(@yelps) do |yelp|
  json.extract! yelp, :id, :name, :starts_month_day_year, :starts_time, :ends_month_day_year, :ends_time, :venue_name, :venue_street, :venue_city_state_zip, :event_site_url, :tickets_url, :cost, :description, :category
  json.url yelp_url(yelp, format: :json)
end
