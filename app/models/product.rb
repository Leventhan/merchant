class Product < ActiveRecord::Base
    validates_numericality_of :price
    validates :stock, numericality: {greater_than_or_equal_to: 0, only_integer: true}
    has_many :order_items

    def price=(input)
        input.to_s.delete!("$")
        super
    end
end
