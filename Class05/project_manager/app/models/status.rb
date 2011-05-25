class Status < ActiveRecord::Base
  
  has_many :roles
  has_many :projects, :through => :roles
  
  validates :title ,:presence =>true
  
  default_scope order("position ASC") #ordena pelo campo position em ondem scendente
  
end
