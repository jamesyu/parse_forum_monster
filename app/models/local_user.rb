class LocalUser < ActiveRecord::Base
  has_many :topics, :dependent => :destroy
  has_many :posts, :dependent => :destroy
end
