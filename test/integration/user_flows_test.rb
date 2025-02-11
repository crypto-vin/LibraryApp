# test/integration/user_flows_test.rb
require 'test_helper'

class UserFlowsTest < ActionDispatch::IntegrationTest
  test 'user can borrow and return a book' do
    # Sign up
    visit signup_path
    fill_in 'Email', with: 'user@example.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_button 'Sign Up'
    
    # Create book
    Book.create!(title: 'Sample Book', author: 'Author', isbn: '1234567890')
    
    # Borrow book
    visit books_path
    click_link 'Sample Book'
    click_button 'Borrow'
    
    # Return book
    visit profile_path
    click_button 'Return'
  end
end