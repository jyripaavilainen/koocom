class Event < ActiveRecord::Base
  attr_accessible :city, :date, :description, :end_time, :name, :price, :start_time, :venue
end
