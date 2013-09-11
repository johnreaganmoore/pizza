module Pizza

  class Pie

    attr_accessor :toppings

    def initialize(toppings)
      @toppings = toppings
    end
   
    # def add_topping(topping)
    #   @toppings << topping
    # end
  end

  class Topping

    attr_accessor :name, :vegetarian

    def initialize(name, vegetarian: false)
      @name = name
      @vegetarian = vegetarian
    end

  end
end