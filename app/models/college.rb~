# == Schema Information
#
# Table name: colleges
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  state      :string(255)
#  city       :string(255)
#  image      :string(255)
#  img_link   :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class College < ActiveRecord::Base
  attr_accessible :city, :image, :img_link, :name, :state
  
  validates :name, presence: true
  validates :state, presence: true
  validates :city, presence: true
end
