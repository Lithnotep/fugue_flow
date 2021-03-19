require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it {should validate_presence_of(:username)}
    it {should validate_presence_of(:password)}
  end

  describe 'user' do
    it 'can be created as user' do
      user = User.create(username: 'Megaman', password: 'password')

      expect(user.username).to eq('Megaman')
    end
  end

end
