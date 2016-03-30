require 'rails_helper'

RSpec.describe Group, :model do
	let(:groups){["akshay", "chauhan"]}

	before(:each) do |example|
		@group = Group.new
	end

  it 'first pending test' do
    expect(@group.test).to eq(true)
  end

  it "can test" do
    expect(true).to eq(true)
  end

  it "count Groupps Array" do
  	expect(groups.length).to be == 2
  	expect(groups.length).to eq(2)
  	expect(groups).to be_present
  	expect(groups.present?).to eq(true)
  end
end