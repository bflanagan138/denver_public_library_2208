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

    describe '#add_author' do
        it 'can add authors' do
            dpl = Library.new("Denver Public Library")
            charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
            dpl.add_author(charlotte_bronte)

            expect(dpl.authors).to eq [charlotte_bronte]
        end
    end

    describe '#add_authors, #add_books' do
        it 'can add authors and books' do
            dpl = Library.new("Denver Public Library")
            charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
            jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
            charlotte_bronte.write("Jane Eyre", "October 16, 1847")
            professor = charlotte_bronte.write("The Professor", "1857")
            villette = charlotte_bronte.write("Villette", "1853")

            harper_lee = Author.new({first_name: "Harper", last_name: "Lee"})
            mockingbird = harper_lee.write("To Kill a Mockingbird", "July 11, 1960")
            dpl.add_author(charlotte_bronte)
            dpl.add_author(harper_lee)
            dpl.add_book(jane_eyre)
            dpl.add_book(professor)
            dpl.add_book(villette)
            dpl.add_book(mockingbird)
            expect(dpl.authors).to eq [charlotte_bronte, harper_lee]
            expect(dpl.books).to eq [jane_eyre, professor, villette, mockingbird]
           
        end
    end


end