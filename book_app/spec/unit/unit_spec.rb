# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
	subject do
		described_class.new(title: 'harry potter')
	end

	it 'is valid with valid attributes' do
		expect(subject).to be_valid
	end

	it 'is not valid without a name' do
		subject.title = nil
		expect(subject).not_to be_valid
	end
end

RSpec.describe Book, type: :model do
	subject do
		described_class.new(title: 'harry potter', author: 'jk rowling',)
	end

	it 'is valid with valid attributes' do
		expect(subject).to be_valid
	end

	it 'is not valid without an author' do
		subject.title = nil
		subject.author = nil
		expect(subject).not_to be_valid
	end
end

RSpec.describe Book, type: :model do
	subject do
		described_class.new(title: 'harry potter', author: 'jk rowling', price: 14)
	end

	it 'is valid with valid attributes' do
		expect(subject).to be_valid
	end

	it 'is not valid without a price' do
		subject.title = nil
		subject.author = nil
		subject.price = nil
		expect(subject).not_to be_valid
	end
end

RSpec.describe Book, type: :model do
	subject do
		described_class.new(title: 'harry potter', author: 'jk rowling', price: 14, publishdate: 2019-12-12)
	end

	it 'is valid with valid attributes' do
		expect(subject).to be_valid
	end

	it 'is not valid without a date' do
		subject.title = nil
		subject.author = nil
		subject.price = nil
		subject.publishdate = nil
		expect(subject).not_to be_valid
	end
end