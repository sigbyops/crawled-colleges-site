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

require 'spec_helper'

describe College do
  pending "add some examples to (or delete) #{__FILE__}"
end
