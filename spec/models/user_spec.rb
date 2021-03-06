require 'rails_helper'

RSpec.describe User do
  it 'should have many houses' do
    t = User.reflect_on_association(:houses)
    expect(t.macro).to eq(:has_many)
  end
end
