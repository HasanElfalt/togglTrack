require 'rails_helper'

# frozen_string_literal: true

RSpec.describe "Tasks page" do
    describe "try to display tasks" do
      it "With login credentials it will redirect to home page" do
        # Use Devise's sign_in helper to sign in the user
        user = User.create(email: 'hassan@gmail.com', password: '123456')
        sign_in(user)
  
        # Interact with the app or perform any additional actions needed to access the Tasks page
        visit(tasks_path)
  
        # Expect to be redirected to the home page after successful login
        expect(page).to have_current_path('/tasks')
  
        # Expect the content of the Tasks page
        expect(page).to have_content('Tasks')
      end
    end
  end
  
