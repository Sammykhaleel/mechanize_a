class CreateYelps < ActiveRecord::Migration
  def change
    create_table :yelps do |t|
      t.string :name
      t.datetime :starts_month_day_year
      t.datetime :starts_time
      t.datetime :ends_month_day_year
      t.datetime :ends_time
      t.string :venue_name
      t.string :venue_street
      t.string :venue_city_state_zip
      t.string :event_site_url
      t.string :tickets_url
      t.string :cost
      t.text :description
      t.string :category

      t.timestamps null: false
    end
  end
end
