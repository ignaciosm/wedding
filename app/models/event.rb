class Event < ApplicationRecord
	translates :event_name, :event_location, :event_content
end
