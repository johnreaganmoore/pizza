require 'rubygems'
require 'bundler/setup'
require 'rspec'
require_relative '../pizza'

describe Pizza::Pie do
  describe '.initialize' do
    it 'records all of the toppings' do
      toppings = [
        Pizza::Topping.new('mushrooms', vegetarian: true),
        Pizza::Topping.new('pepperoni')
      ]

      pizza = Pizza::Pie.new(toppings)

      expect(pizza.toppings).to eq(toppings)
    end
  end
end 

describe Pizza::Topping do
  describe '.initialize' do
    it 'sets the name of a new topping' do
      topping = Pizza::Topping.new('olives')

      expect(topping.name).to eq('olives')
    end

    it 'sets whether or not the pizza is vegetarian' do
      topping = Pizza::Topping.new('bell peppers', vegetarian: true)

      expect(topping.name).to eq('bell peppers')
      expect(topping.vegetarian).to eq(true)
    end
  end
end