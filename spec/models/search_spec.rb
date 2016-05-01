require 'rails_helper'

RSpec.describe Search, type: :model do
  describe 'validations' do
    it 'valid' do
      expect(build(:search)).to be_valid
    end
    it 'invalid title' do
      expect(build(:search, title: nil)).to_not be_valid
    end
    it 'invalid client' do
      expect(build(:search, client: nil)).to_not be_valid
    end
    it 'blank address ip' do
      expect(build(:search, address_ip: nil)).to be_valid
    end
  end
end
