require 'rails_helper'

RSpec.describe TackleBoxItem, type: :model do
  subject { create(:tackle_box_item) }

  it { should be_valid }

end
