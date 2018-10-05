require 'rails_helper'

RSpec.describe House do
  let(:house) { create(:house, :either) }

  it 'is valid' do
    expect(house).to be_valid
  end

  context 'rent' do
    it 'is not valid without' do
      house.rent = nil
      expect(house).not_to be_valid
    end

    it 'can not be negative' do
      house.rent = -1
      expect(house).not_to be_valid
    end

    it 'can not be string'  do
      house.rent = 'three hundred'
      expect(house).to_not be_valid
    end

    it 'can not be zero' do
      house.rent = 0
      expect(house).not_to be_valid
    end
  end

  context 'deposit' do
    it 'is valid with' do
      house.deposit = 999
      expect(house).to be_valid
    end

    it 'is valid without' do
      house.deposit = nil
      expect(house).to be_valid
    end

    it 'can not be negative' do
      house.deposit = -1
      expect(house).not_to be_valid
    end

    it 'can not be a string' do
      house.deposit = 'lots'
      expect(house).not_to be_valid
    end

    it 'can not be zero' do
      house.deposit = 0
      expect(house).not_to be_valid
    end
  end

  context 'preferred gender' do
    it 'is not valid without' do
      house.preferred_gender = nil
      expect(house).not_to be_valid
    end

    it 'is not an included preferred gender' do
      house.preferred_gender = 2
      expect(house).to be_valid
    end
    # XXX:
    #   ActiveRecord or something returns string to zero.
    #
    # it "can not be integer which is string"
    # it "can not be text"
  end

  context 'available at' do
    it 'is not valid if time is past' do
      house.available_at = 1.week.ago
      expect(house).not_to be_valid
    end

    it 'is valid if time is today' do
      house.available_at = Time.zone.today
      expect(house).to be_valid
    end

    it 'is valid if time is future' do
      house.available_at = 1.week.after
      expect(house).to be_valid
    end
  end
end
