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

require 'spec_helper'

describe School do
  
  before { @school = School.new(name: "Example College", avg: 3.43, total: 20) }
  subject { @school }
  
  # test for attributes
  it {should respond_to(:name)}
  it {should respond_to(:avg)}
  it {should respond_to(:total)}
  
  it {should be_valid}
  
  # tests validates :name, presence: true in school.rb
  describe "when name is not present" do
  	before {@school.name=" "}
  	it {should_not be_valid}
  end
end
