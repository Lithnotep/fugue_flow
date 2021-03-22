require 'rails_helper'

describe 'User' do
    it 'can register' do
        username = 'username'
        password = 'password'
        password_confirmation = 'password'

        visit '/'
        click_on 'Register'

        expect(current_path).to eq(new_user_path)

        fill_in 'user[username]'
        fill_in 'user[password]', with: password
        fill_in 'user[password_confirmation]', with: password

        click_on'Create Account'

        expect(current_path).to eq('/')

        expect(page).to have_content(username)

    end
end