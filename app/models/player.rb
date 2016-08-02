class Player < ActiveRecord::Base

has_many :matchings
has_many :matches, through: :matchings
end
