require 'rails_helper'

describe Group, :model do
  it 'first pending test' do
    group = Group.new
    expect(group.test).to eq(true)
  end
end