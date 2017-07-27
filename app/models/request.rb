class Request < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :startdate, presence: true
  validates :enddate, presence: true
  validates :noofguests, presence: true
#  validates_inclusion_of :email, :in => "@"
end
