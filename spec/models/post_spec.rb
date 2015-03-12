require 'rails_helper'

describe Tingui::Post do
  it { is_expected.to validate_presence_of(:title) }
end
