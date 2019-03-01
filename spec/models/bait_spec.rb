require 'rails_helper'

RSpec.describe Bait, type: :model do
  subject { create(:bait) }

  it { should be_valid }
  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_presence_of :category }
  it { is_expected.to validate_presence_of :image }
  it { should validate_uniqueness_of(:name).scoped_to(:category) }
end
