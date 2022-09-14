require 'rspec'
require 'pry'
require './lib/book'
require './lib/author'
require './lib/library'

RSpec.describe Library do
    describe '#initialize' do
        it 'exists and has readable attributes' do
            dpl = Library.new("Denver Public Library")
           
            expect(dpl.name).to eq "Denver Public Library"
            expect(dpl.books).to eq []
            expect(dpl.authors).to eq []
        end
    end
end