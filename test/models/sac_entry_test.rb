require 'test_helper'

class SacEntryTest < ActiveSupport::TestCase
  test "sacentry attributes must not be empty" do
    sacentry = SacEntry.new
    assert sacentry.invalid?
    assert sacentry.errors[:description].any?
    assert sacentry.errors[:amount].any?
    assert sacentry.errors[:category_id].any?
    assert sacentry.errors[:date].any?
    assert sacentry.errors[:type_id].any?
  end
end
