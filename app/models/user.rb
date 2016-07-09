class User < ActiveRecord::Base
  #has_many :reviews, :foreign_key => 'host_id'
  has_many :listings, :foreign_key => 'host_id'
  #belongs_to :reservation, :foreign_key => 'guest_id'
  has_many :reservations, :through => :listings

  has_many :trips, :foreign_key => 'guest_id', :class_name => "Reservation"
  has_many :reviews, :foreign_key => 'guest_id'
end
