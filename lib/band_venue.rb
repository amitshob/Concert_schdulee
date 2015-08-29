class Band_venue < ActiveRecord::Base
  has_many :venues
  has_many :bands
end
