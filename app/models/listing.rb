class Listing < ActiveRecord::Base
  has_many :reservations#, as: :trips
  has_many :reviews, :through => :reservations
  belongs_to :neighborhood
  belongs_to :city

  belongs_to :host, :class_name => "User"

  has_many :guests, :class_name => "User", :through => :reservations  
end
