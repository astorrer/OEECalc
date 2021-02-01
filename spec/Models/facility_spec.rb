require 'rails_helper'

require 'spec_helper'

describe Facility do

  it "should require a name" do
    Facility.new(:name => "").should_not be_valid
  end
  
end