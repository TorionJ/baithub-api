require 'rails_helper'

RSpec.describe Catch, type: :model do
  subject { create(:catch) }
  binding.pry

  it { should be_valid }
  it { is_expected.to validate_presence_of :species }
  it { is_expected.to validate_presence_of :weight }
  it { is_expected.to validate_presence_of :length }

  it { is_expected.to validate_numericality_of :weight }
  it { is_expected.to validate_numericality_of :length }
end
