require 'rails_helper'

RSpec.describe Question, type: :model do
  context 'create' do
    before(:each) do
      create(:question)
    end

    it 'a valid question' do
      expect(Question.count).to eq(1)
    end

    it 'a invalid question' do
      Question.create(title: 'It should fail')
      expect(Question.count).to eq(1)
    end
  end
end
