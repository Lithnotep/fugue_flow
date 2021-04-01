require 'rails_helper'

RSpec.describe Dream, type: :model do
  describe 'validations' do
    it {should validate_presence_of(:description)}
    it {should validate_presence_of(:date)}
  end

  describe 'Relationships' do
    it {should belong_to :user}
  end
  
  # describe 'dream' do
  #   it 'can be created as dream' do
  #     user = User.create(description: 'Megaman', password: 'password')
      
  #     expect(user.username).to eq('Megaman')
  #   end
  # end
end