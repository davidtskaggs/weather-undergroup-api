class Location < ActiveRecord::Base
  validates :city, :state, :user_id, presence: true
  belongs_to :user
end
