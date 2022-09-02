require 'dessert'

describe Dessert do 
    subject(:brownie) {Dessert.new("brownie", 50)}

    describe '#initialize' do 
        it 'take in a type' do
            expect(brownie.type).to eq('brownie')
        end

        it 'takes in amount' do 
            expect(brownie.amount).to eq(50)
        end 
        
        context 'with a huge amount' do 
            subject(:brownie) {Dessert.new("Brownie", 1000)}
            it 'sets type to include Giant' do
                expect(brownie.type).to eq("Giant Brownie")
            end
        end

        it 'raise an error if amount is not a number' do 
            expect {Dessert.new("Brownie", "error")}.to eq raise_error('amount has to be a number')
        end
    end
end