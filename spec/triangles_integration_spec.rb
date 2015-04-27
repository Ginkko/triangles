require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe('triangles path', {:type => :feature}) do

it ('accepts three inputs and returns the type of triangle') do
     visit('/')
     fill_in('a', :with => '3')
     fill_in('b', :with => '4')
     fill_in('c', :with => '5')
     click_button('Triangulate!')
     expect(page).to have_content("That's a Scalene Triangle")
   end
end
