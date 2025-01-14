require 'rspec'
require 'pry'
require './lib/book'

RSpec.describe Book do
    describe '#initialize' do
        it 'exists and has readable attributes' do
            book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})

            expect(book.title).to eq "To Kill a Mockingbird"
            expect(book.author).to eq "Harper Lee"
        end
    end

    describe '#publication_year' do
        it 'has a year of publication' do
            book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})

            expect(book.publication_year).to eq "1960"
        end
    end
end