require 'rails_helper'

RSpec.describe User, type: :model do
  subject { create(:user) }

  it { should be_valid }
  it { is_expected.to validate_presence_of :username }
  it { is_expected.to validate_uniqueness_of :username }
end
