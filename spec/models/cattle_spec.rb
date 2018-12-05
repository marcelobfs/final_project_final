require 'rails_helper'

RSpec.describe Cattle, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:vaccinations) }

    it { should have_many(:weightings) }

    it { should have_many(:pregnancies) }

    it { should have_one(:cattle_sale) }

    it { should have_one(:death) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
