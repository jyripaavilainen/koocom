class Search < ActiveRecord::Base
	attr_accessible :comedian, :date, :city, :min_price, :max_price

	def comedians
		@comedians ||= find_comedians
	end

	def events
		@events ||= find_events
	end

	private

	def find_comedians
		Comedian.find(:all, :limit => 12)
	end

	def find_events
		Event.find(:all, :conditions => conditions)
	end

	def comedian_conditions
		["events.description LIKE ?", "%#{comedian.humanize}%"] unless comedian.blank?
	end

	def date_conditions
		["events.date >= ?", date] unless date.blank?
	end

	def city_conditions
		["events.city LIKE ?", "%#{city.humanize}%"] unless city.blank?
	end

	def conditions
		[conditions_clauses.join(' AND '), *conditions_options]
	end

	def conditions_clauses
		conditions_parts.map { |condition| condition.first }
	end

	def conditions_options
		conditions_parts.map { |condition| condition[1..-1] }.flatten
	end

	def conditions_parts
		private_methods(false).grep(/_conditions$/).map { |m| send(m) }.compact
	end

end
