class User < ActiveRecord::Base
  has_many :boards
  has_many :board_members
  has_many :cards, :through => :card_assignment
end
