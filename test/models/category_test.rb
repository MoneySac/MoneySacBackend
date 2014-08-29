require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  test "category attributes must not be empty" do
    category = Category.new
    assert category.invalid?
    assert category.errors[:name].any?
  end

  test "category type_id must be greater than or equal to zero" do
  	category = Category.new(name: 'testCat')
  	
  	category.type_id = -1
  	assert category.invalid?
  	assert_equal ["must be greater than or equal to 0"], category.errors[:type_id]

  	category.type_id = 0
  	assert category.valid?
  end
end
