class Dessert
    attr_reader :type, :amount

    def initialize(type, amount)

    raise "amount has to be an integer" unless amount.is_a?(Integer)
    
    @amount = amount
    @type = amount > 100 ? "Giant #{type}" : type

    end
end