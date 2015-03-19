require 'rails_helper'

describe Caz::EntryCategory do
  it { is_expected.to belong_to(:category) }
  it { is_expected.to belong_to(:entry) }
end
