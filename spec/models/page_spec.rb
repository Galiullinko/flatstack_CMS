require "rails_helper"

describe Page do
  it { is_expected.to validate_presence_of :title }
  it { is_expected.to validate_presence_of :user_id }
  it { is_expected.to validate_presence_of :body }
end
