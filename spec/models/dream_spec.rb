require 'rails_helper'

RSpec.describe Dream, type: :model do
  describe 'validations' do
    it {should validate_presence_of(:description)}
    it {should validate_presence_of(:date)}
  end

  describe 'Relationships' do
    it {should belong_to :user}
  end
  
  describe 'dream' do
    it 'can be created' do
      user = User.create(username: 'Megaman', password: 'password')
      dream = Dream.create(description: 'What a great Dream!', date: Date.new(2015, 12, 8), user_id: user.id)
      
      expect(user.username).to eq('Megaman')
      expect(dream.description).to eq('What a great Dream!')
      expect(dream.date.strftime("%a, %d %b %Y")).to eq('Tue, 08 Dec 2015')
    end
  end
end