require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryGirl.create(:user)
  end

  describe 'creation' do
    it 'can be created' do
      expect(@user).to be_valid
    end
  end

  describe 'validations' do
    it 'cannot be created without first_name, last_name' do
      @user.first_name = nil
      @user.last_name = nil

      expect(@user).to_not be_valid
    end

    it 'cannot be created without a phone number' do
      @user.phone = nil
      expect(@user).to_not be_valid
    end

    it 'requires the phone attr to only contain integers' do
      @user.phone = 'mygreatball'
      expect(@user).to_not be_valid
    end
    
    it 'requires the phone attr to have only contain 11 characters' do
      @user.phone = '123456789111'
      expect(@user).to_not be_valid
    end

    it 'requires an ssn' do
      @user.ssn = nil
      expect(@user).to_not be_valid
    end

    it 'requires a company' do
      @user.ssn = nil
      expect(@user).to_not be_valid
    end

    it 'requires the ssn attr to only contain integers' do
      @user.ssn = 'myst'
      expect(@user).to_not be_valid
    end

    it 'requires the ssn attr to have only contain 4 characters' do
      @user.ssn = 12345
      expect(@user).to_not be_valid
    end
  end
  describe 'custom name methods' do
    it 'has a full name method that combines first and last name' do
      expect(@user.full_name).to eq('SNOW, JOHN')
    end
  end

  describe 'relationship between admin and employees' do
    it 'allows for admins to be associated with multiple employees' do
      employee_1 = FactoryGirl.create(:employee)
      employee_2 = FactoryGirl.create(:employee)

      admin_user = FactoryGirl.create(:admin_user)

      Hand.create!(user_id: admin_user.id, hand_id: employee_1.id)
      Hand.create!(user_id: admin_user.id, hand_id: employee_2.id)

      expect(admin_user.hands.count).to eq(2)
    end

    
  end
end
