require 'test_helper'

class SacEntryTest < ActiveSupport::TestCase
  test "sacentry attributes must not be empty" do
    sacentry = SacEntry.new
    assert sacentry.invalid?
    assert sacentry.errors[:description].any?
    assert sacentry.errors[:amount].any?
    assert sacentry.errors[:category_id].any?
    assert sacentry.errors[:date].any?
  end

  test "sacentrys category_id matching works" do
  	category = Category.all.first
    sacentry = SacEntry.new
    sacentry.category_id = Category.all.first.id
    assert_equal(sacentry.category_id, category.id)
  end

  test "sacentry must have an existing category_id" do
    sacentry = SacEntry.new
    sacentry.category_id = 1
    assert sacentry.invalid? 
  end 
end
