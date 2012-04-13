require 'spec_helper'

describe Order do
  let(:test_user) { FactoryGirl.create(:user) }
  let(:test_products) do
    (1..5).map { FactoryGirl.create(:product) }
  end
  
  before(:each) do
    @attr = {
      status: "pending",
      user: test_user,
      products: test_products
    }
  end
  
  it "should create an order given valid attributes" do
    Order.create(@attr)
  end
end
