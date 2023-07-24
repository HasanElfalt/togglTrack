require 'rails_helper'

# frozen_string_literal: true

RSpec.describe "Login Page" do
  describe "login text link to sign up page" do
    it "display login" do
      visit("/users/sign_in")
      expect(page).to have_content("Log in")
      click_link("Sign up")
      expect(current_path).to eql('/users/sign_up')
      expect(page).to have_content("Sign up")
    end
  end
end

RSpec.describe "Login page" do
    describe "try to display tasks without login" do
      it "Without login credentials it will redirect to sign in page" do
          #2 interact with the app
          visit('/tasks')
  
          #3 expect something to happen
          expect(page).to have_content('Log in')
      end
    end
  end
