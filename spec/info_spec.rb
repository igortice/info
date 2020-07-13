# frozen_string_literal: true

RSpec.describe Info do
  it 'has a version number' do
    expect(Info::VERSION).not_to be nil
  end
end
