require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    # validation tests/examples here

    

      it ('should validate if it has a first name, last name, password and password confirmation')
      do
        @user = User.new({:first_name => "Kim", :last_name => "Kardashian", :email => 'kimk@fakeemail.com', :password => 'rich', :password_confirmation => "richrich"})
        expect(@user).to be_valid
    end


    it 'should not validate if there is no password' 
    do
      @user = User.new({:first_name => "Kim", :last_name => "Kardashian", :email => 'kimk@fakeemail.com', :password => nil, :password_confirmation => "richrich"})
      expect(@user).to_not be_valid
    end

    it 'should  validate if the password and password confirmation are the same '
    do
      @user = User.new({:first_name => "Kim", :last_name => "Kardashian", :email => 'kimk@fakeemail.com', :password => 'richrich', :password_confirmation => "richrich"})
      expect(@user.password).to eq(@user.password_confirmation)
    end

    it 'should not validate if the password is under 8 characters' 
    do
      @user = User.new({:first_name => "Kim", :last_name => "Kardashian", :email => 'kimk@fakeemail.com', :password => 'rich', :password_confirmation => "richrich"})
      expect(@user).to_not be_valid
    end

    it 'should not validate if there is no email'
    do
      @user = User.new({:first_name => "Kim", :last_name => "Kardashian", :email => nil, :password => 'rich', :password_confirmation => "richrich"})
      expect(@user).to_not be_valid
    end



end
end