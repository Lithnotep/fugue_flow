require 'rails_helper'

RSpec.describe Dream, type: :model do
  describe 'validations' do
    it {should validate_presence_of(:description)}
    it {should validate_presence_of(:date)}
  end
end
