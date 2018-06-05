class Listing < ApplicationRecord
  self.primary_key = 'listing_id'
  has_many :medias

  default_scope { order("days_on_market ASC") }
end
