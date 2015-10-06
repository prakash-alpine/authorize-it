require 'rails_helper'

RSpec.describe Group do


  it 'is invalid without name' do
    expect(FactoryGirl.build(:group, name: nil)).not_to be_valid
  end

  it 'is valid without description' do
    expect(FactoryGirl.build(:group, description: nil)).to be_valid
  end

   it 'should have many users' do
     expect(FactoryGirl.create(:group_with_3_users).users.count).to eq 3
   end

  it 'does not allow names longer than 25 chars' do
    expect(FactoryGirl.build(:group, name: 'dffkdfkfffdkfkdjkjfkdjkffkkfjkfejrjkfkdfkelrkelkfkkejlrekfkd')).not_to be_valid
  end

  it 'does not allow name with special chars' do
    expect(FactoryGirl.build(:role, name: 'pra%kash@)!@#')).not_to be_valid
  end

  it 'does not allow duplicate names' do
    FactoryGirl.create(:group, name: 'duplicate_group')
    expect(FactoryGirl.build(:group, name: 'duplicate_group')).not_to be_valid
  end

  it 'does not allow description longer than 256 chars' do
    expect(FactoryGirl.build(:group, description: Faker::Lorem.characters(300))).not_to be_valid
  end

  # let(:group)  { FactoryGirl.create(:group) }
  #
  # it 'has and belongs to many users' do
  #   expect(group).to have_and_belongs_to_many(:users)
  # end

  # not working
  it {should have_and_belongs_to_many(:users)}


end