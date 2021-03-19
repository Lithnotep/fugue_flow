require 'rails_helper'

describe 'User' do
    it 'user can sign in' do
        user = create(:user)

        visit '/'

        click_on "Sign In"

        expect(current_path).to eq(login_path)

        fill_in 'session[username]', with: user.email
        fill_in 'session[password]', with: user.password

        click_on 'Log In'
        
    end
end