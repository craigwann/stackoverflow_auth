require 'rails_helper'

describe Question do
  it 'is private by default' do
    question = FactoryBot.create(:question)
    question.title.should eq 'geography'
  end
end
