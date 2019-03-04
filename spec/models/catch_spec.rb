require 'rails_helper'

RSpec.describe Catch, type: :model do
  let(:bait) {Bait.create!(name: 'blah', category: 'lala', image: 'trouty')}
  let(:user) {User.create!(username: 'TorionJ', password: 'admin', password_confirmation: 'admin')}
  subject do
    described_class.new(bait_id: bait.id,
                        user_id: user.id,
                        species: 'trill fish',
                        weight: 5,
                        length: 10,
                        created_at: Date.new,
                        updated_at: Date.new)
  end
  describe 'Validations' do
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end
  end
end
