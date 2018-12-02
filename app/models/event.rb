class Event < ApplicationRecord
  belongs_to :event_category, optional: true
  belongs_to :event_organizer, optional: true
end
