class Board < ActiveRecord::Base
  has_many :users, :through => :board_members
  has_many :lists
  belongs_to :user
end
