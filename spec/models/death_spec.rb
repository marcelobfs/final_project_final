require 'rails_helper'

RSpec.describe Death, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:cattle) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
