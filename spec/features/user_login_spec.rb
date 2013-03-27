require 'spec_helper'


describe 'Users' do 

  context 'login' do

    context 'user can access the login page' do
      it 'displays login page' do
        visit '/login'
        expect( page.has_field?('username') ).to be_true
      end
    end

    context 'when logging in with valid information' do
      it "should direct user to " do
        User.create(email: "admin@example.com", username: "admin", password: "admin", password_confirmation: "admin")
        visit login_path
        fill_in 'Username', :with => "admin"
        fill_in 'Password', :with => "admin"
        click_button "Login"
        # expect( page.has_css?('div#cart_confirmation') )
        # expect( current_path ).to eq user_sessions_path
        expect( current_path ).to eq cart_path
    end

    context 'user attempts to login with bad username or password' do

      it 'will direct visitor back to login page' do
        User.create(email: "admin@example.com", username: "admin", password: "admin", password_confirmation: "admin")
        visit login_path
        fill_in 'Username', :with => "Schnitzle"
        fill_in 'Password', :with => "Schnotzle"
        click_button "Login"
        expect( current_path ).to eq login_path
      end


    end

    end

  end

end