require 'rails_helper'

RSpec.describe Score, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:time) }
end
