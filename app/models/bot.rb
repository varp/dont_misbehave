class Bot < ActiveRecord::Base
  validates_uniqueness_of :ip
end

