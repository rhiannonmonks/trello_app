class Card < ActiveRecord::Base
  has_many :items
  belongs_to :list
end
