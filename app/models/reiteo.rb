class Reiteo < ActiveRecord::Base
  validates :description, presence: true
end
