class Game < ActiveRecord::Base
  attr_accessible :name, :viewers, :logo
end
