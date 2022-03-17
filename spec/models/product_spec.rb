require 'rails_helper'


RSpec.describe Product, type: :model do
  describe 'Validations' do
    # validation tests/examples here

    it ('should validate if all four fields set') do
      @category = Category.new({:name => "Pets"})
      @product = Product.new({:name => "Purple Elephant", :price => 10000, :quantity => 3, :category => @category})
    
    expect(@product).to be_valid

    end

    it ('should not validate if there is no name') do
      @category = Category.new({:name => "Pets"})
      @product = Product.new({:name => nil, :price => 10000, :quantity => 3, :category => @category})

      expect(@product).to_not be_valid
    end

    it('should not validate if there is no price') do 
      @category = Category.new({:name => "Pets"})
      @product = Product.new({:name => "Purple Elephant", :price => nil, :quantity => 3, :category => @category})

      expect(@product).to_not be_valid
    end

    it('should not validate if there is no quantity') do

      @category = Category.new({:name => "Pets"})
      @product = Product.new({:name => "Purple Elephant", :price => 10000, :quantity => nil, :category => @category})

      expect(@product).to_not be_valid

    end
    it ('should not validate if there is no category') do 

      @category = Category.new({:name => "Pets"})
      @product = Product.new({:name => "Purple Elephant", :price => 10000, :quantity => 3, :category => nill})

      expect(@product).to_not be_valid
    end     

  end
end