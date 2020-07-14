# frozen_string_literal: true

RSpec.describe Info do
  describe 'Description of gem' do
    it 'has name: info' do
      expect(Info::NAME).to be 'info'
    end

    it 'has version number: 0.1.0' do
      expect(Info::VERSION).to be '0.1.0'
    end

    it 'has author: Igor Rocha <igortice@gmail.com>' do
      expect(Info::AUTHORS[0]).to eq({ name: 'Igor Rocha', email: 'igortice@gmail.com' })
    end

    it 'has a summary' do
      expect(Info::SUMMARY).not_to be nil
    end

    it 'has a description' do
      expect(Info::DESCRIPTION).not_to be nil
    end

    it 'has home page: https://github.com/igortice/info' do
      expect(Info::HOMEPAGE).to be 'https://github.com/igortice/info'
    end

    it 'has license: MIT' do
      expect(Info::LICENSE).to be 'MIT'
    end
  end
end
