class Event < ActiveRecord::Base
  attr_accessible :city, :date, :description, :end_time, :name, :price, :start_time, :venue, :organizer_id
  default_scope where('date >= ?', Date.today - 1.day )
  default_scope order('date ASC')
  belongs_to :organizer

  def self.search(search)
	  if search
	    find(:all, :conditions => ['city LIKE ?', "%#{search}%"])
	  else
	    find(:all)
	  end
	end
end
