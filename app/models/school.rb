# == Schema Information
#
# Table name: schools
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  avg        :decimal(, )
#  total      :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class School < ActiveRecord::Base
  attr_accessible :name, :avg, :total
  
  validates :name, presence: true
end



