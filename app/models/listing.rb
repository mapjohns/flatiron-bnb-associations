require 'pry'
class Listing < ApplicationRecord
    belongs_to :neighborhood
    belongs_to :host, class_name: "User"
    has_many :reservations
    has_many :reviews, through: :reservations
    has_many :guests, through: :reservations

    
    # def guests
    #     binding.pry
    #     gs = []
    #     self.reservations.each do |rs|
    #         gs << rs.guest
    #     end
    #     gs
    # end
end
