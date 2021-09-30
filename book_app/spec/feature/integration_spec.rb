# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
	scenario 'valid inputs' do
		visit new_book_path
		fill_in 'Title', with: 'harry potter'
		click_on 'Create Book'
		visit books_path
		expect(page).to have_content('harry potter')
	end
end

RSpec.describe 'Creating a book with author', type: :feature do
	scenario 'valid inputs' do
		visit new_book_path
		fill_in 'Title', with: 'harry potter'
		fill_in 'Author', with: 'jk rowling'
		click_on 'Create Book'
		#visit books_path
		#visit book
		#expect(@book).to have_content('harry potter')
		expect(page).to have_content('jk rowling')
	end
end

RSpec.describe 'Creating a book with price', type: :feature do
	scenario 'valid inputs' do
		visit new_book_path
		fill_in 'Title', with: 'harry potter'
		fill_in 'Price', with: 13
		click_on 'Create Book'
		visit books_path
		visit book
		expect(page).to have_content('harry potter')
		expect(page).to have_content(13)
	end
end

RSpec.describe 'Creating a book with date', type: :feature do
	scenario 'valid inputs' do
		visit new_book_path
		fill_in 'Title', with: 'harry potter'
		fill_in 'Date', with: 2019
		click_on 'Create Book'
		visit book
		expect(page).to have_content('harry potter')
		expect(page).to have_content(2019)
	end
end