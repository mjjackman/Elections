class Constituency < ActiveRecord::Base
  has_many :parties
  has_many :candidates
end
